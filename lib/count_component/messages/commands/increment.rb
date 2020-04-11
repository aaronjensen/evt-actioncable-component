module CountComponent
  module Messages
    module Commands
      class Increment
        include Messaging::Message

        attribute :count_id, String
      end
    end
  end
end
