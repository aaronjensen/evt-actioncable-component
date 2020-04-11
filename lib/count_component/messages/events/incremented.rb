module CountComponent
  module Messages
    module Events
      class Incremented
        include Messaging::Message

        attribute :count_id, String
      end
    end
  end
end
