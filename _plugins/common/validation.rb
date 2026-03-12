# Validation mixin
module Validation
    # @param [Object] value
    # @param [String] name
    def validate(value, name)
        TopChain.new(value, name)
    end

    class BaseChain
        # @param [Object] value
        # @param [String] name
        def initialize(value, name)
            @value = value
            @name = name
        end

        # @param [Object] value
        # @param [String] name
        # @param [Class] expected_class
        def validate_class(value, name, expected_class)
            raise "#{name} (#{value}) is not type `#{expected_class}` (was type `#{value.class}`)" unless value.is_a?(expected_class)
        end
    end

    # Top of validation chain, for before you have checked whether a value is present.
    class TopChain < BaseChain
        # If the value is `nil`, fails. Otherwise, returns a new chain where the value is known to be non-nil.
        def required
            if @value.nil?
                raise "#{@name} is required"
            else
                PresentChain.new(@value, @name)
            end
        end

        def optional
            if @value.nil?
                AbsentChain.new(@value, @name)
            else
                PresentChain.new(@value, @name)
            end
        end

        class AbsentChain < BaseChain
            # @param [Class] expected_class
            def must_be(expected_class); self; end

            # @param [Class] expected_element_class
            def must_be_array_of(expected_element_class); self; end
        end

        class PresentChain < BaseChain
            # @param [Class] expected_class
            def must_be(expected_class)
                validate_class(@value, @name, expected_class)
                self
            end

            # @param [Class] expected_element_class
            def must_be_array_of(expected_element_class)
                validate_class(@value, @name, Array)
                @value.each_with_index do |element, index|
                    validate_class(element, "#{@name}[#{index}]", expected_element_class)
                end
                self
            end
        end
    end
end
