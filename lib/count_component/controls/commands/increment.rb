module CountComponent
  module Controls
    module Commands
      module Increment
        def self.example(count_id: nil)
          count_id ||= Count.id

          increment = CountComponent::Messages::Commands::Increment.build

          increment.count_id = count_id

          increment
        end
      end
    end
  end
end
