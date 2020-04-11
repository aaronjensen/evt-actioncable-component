module CountComponent
  module Controls
    module Count
      def self.example
        count = CountComponent::Count.build

        count.id = self.id
        count.something_happened_time = Time::Effective::Raw.example

        count
      end

      def self.id
        ID.example(increment: id_increment)
      end

      def self.id_increment
        1111
      end

      module New
        def self.example
          CountComponent::Count.build
        end
      end

      module Identified
        def self.example
          count = New.example
          count.id = Count.id
          count
        end
      end
    end
  end
end
