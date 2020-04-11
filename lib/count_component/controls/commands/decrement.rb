module CountComponent
  module Controls
    module Commands
      module Decrement
        def self.example(count_id: nil)
          count_id ||= Count.id

          decrement = CountComponent::Messages::Commands::Decrement.build

          decrement.count_id = count_id

          decrement
        end
      end
    end
  end
end
