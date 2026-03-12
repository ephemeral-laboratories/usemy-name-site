
require_relative '../common/validation'
require_relative 'site_drop'
require_relative 'violation_type_drop'

class DropStash
    include Validation
    attr_reader :site

    TYPED_DATA_KEY = 'typed_data'

    class << self
        private :new

        def for(site)
            stash = site.data[TYPED_DATA_KEY]
            if !stash
                stash = new(site)
                site.data[TYPED_DATA_KEY] = stash
            end
            stash
        end
    end

    private def initialize(site)
        @site = site
    end

    # @param raw_data_key [String] the key for looking up the raw array of hashes.
    #        Is also used to derive the key used to stash the typed data after it's converted, for reuse.
    # @yield [hash] A block which creates the drop object for this type of data.
    # @yieldparam hash [Hash] the raw hash data for the drop.
    # @yieldreturn [???] the created drop.
    # @return [???] the created drop, potentially created earlier.
    private def stashed_data(raw_data_key)
        typed_data_key = "#{TYPED_DATA_KEY}:#{raw_data_key}"
        records = site.data[typed_data_key]
        if !records
            raw_records = site.data[raw_data_key]
            context_name = "site.data.#{raw_data_key}"
            validate(raw_records, context_name).required.must_be_array_of(Hash)
            records = raw_records.each_with_index.map do |hash, index|
                begin
                    yield(hash)
                rescue => error
                    raise "Error mapping #{context_name}[#{index}]: #{error}"
                end
            end
            site.data[typed_data_key] = records
        end
        records
    end

    def sites
        stashed_data('sites') do |hash|
            violation_types = self.violation_types

            # Fill in title and notes from `violation_types` so that the template can treat shared
            # types and custom types in the same way.
            hash['violations'].each do |violation|
                violation_type = violation['type']
                if violation_type && violation_type != 'custom'
                    type = violation_types.find { |t| t.id == violation_type }
                    if type
                        violation['title'] = type.title
                        violation['notes'] = type.notes
                    end
                end
            end

            SiteDrop.new(hash)
        end
    end

    def violation_types
        stashed_data('violation_types') do |hash|
            ViolationTypeDrop.new(hash)
        end
    end
end
