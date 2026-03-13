
require 'liquid/drop'
require_relative 'base_drop'
require_relative 'violation_drop'

# Drop representing a single site we know about.
class SiteDrop < BaseDrop
    attr_reader :domain, :name, :violations, :created, :last_updated

    def do_validation
        validate(domain, 'domain').required.must_be(String)
        validate(name, 'name').optional.must_be(String)
        validate(violations, 'violations').required.must_be_array_of(Hash)
        validate(created, 'created').required.must_be(Date)
        validate(last_updated, 'last_updated').required.must_be(Date)

        if !@name
            @name = @domain
        end
    end

    def do_remapping
        @violations = violations.each_with_index.map do |hash, index|
            begin
                ViolationDrop.new(hash)
            rescue => error
                raise "Error mapping violations[#{index}]: #{error}"
            end
        end
    end
end
