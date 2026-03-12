
require 'liquid/drop'
require_relative 'base_drop'

# Drop representing a single violation a site has.
class ViolationDrop < BaseDrop
    attr_reader :type, :source, :title, :notes, :workarounds

    def do_validation
        validate(type, 'type').required.must_be(String)
        validate(source, 'source').required.must_be(String)
        if type == 'custom'
            validate(title, 'title').required.must_be(String)
            validate(notes, 'notes').required.must_be_array_of(String)
        end
        validate(workarounds, 'workarounds').optional.must_be_array_of(String)
    end
end
