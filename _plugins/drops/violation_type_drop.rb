
require 'liquid/drop'
require_relative 'base_drop'

# Drop representing a single type of violation.
class ViolationTypeDrop < BaseDrop
    attr_reader :id, :title, :notes, :see_also

    def do_validation
        validate(title, 'id').required.must_be(String)
        validate(title, 'title').required.must_be(String)
        validate(notes, 'notes').required.must_be_array_of(String)
        # TODO (later), see_also, if we start using is to generate site content
    end
end
