module Searchgasm
  module Condition
    class NotBlank < Base
      class << self
        def condition_names_for_column
          super + ["is_not_blank"]
        end
      end
      
      def to_conditions(value)
        blank = Blank.new(klass, options)
        blank.value = !value
        blank.sanitize
      end
    end
  end
end