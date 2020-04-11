module CountComponent
  module Messages
    module Commands
      class Decrement
        include Messaging::Message

        attribute :count_id, String
      end
    end
  end
end
