
require 'liquid/drop'
require_relative '../common/validation'

# Base convenience class for implementing drops.
#
# Subclasses are expected to declare their attributes (usually using `attr_reader`),
# and then override `validate` and/or `remap`.
class BaseDrop < Liquid::Drop
    include Validation

    # @param [Hash] hash
    def initialize(hash)
        hash.each_pair do |key, value|
            instance_variable_set("@#{key}".to_sym, value)
        end
        do_validation
        do_remapping
    end

    # Should be overridden by subclasses to perform any validations.
    def do_validation
    end

    # Should be overridden by subclasses to perform any remapping of fields.
    def do_remapping
    end

    def inspect
        keys = instance_variables
        values = keys.map(&method(:instance_variable_get))
        attributes_str = keys.zip(values).to_h.inspect
        "#{self.class}#{attributes_str}"
    end
end
