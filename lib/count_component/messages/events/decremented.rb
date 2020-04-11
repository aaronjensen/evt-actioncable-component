module CountComponent
  module Messages
    module Events
      class Decremented
        include Messaging::Message

        attribute :count_id, String
      end
    end
  end
end
