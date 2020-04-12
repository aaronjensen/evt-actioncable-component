# Handler user guide: http://docs.eventide-project.org/user-guide/handlers.html
# Message user guide: http://docs.eventide-project.org/user-guide/messages-and-message-data/

module CountComponent
  module Handlers
    class Events
      include Messaging::Handle
      include Messaging::StreamName
      include Log::Dependency
      include Messages::Events
      dependency :store, Store

      def configure
        Store.configure(self)
      end

      handle Incremented do |incremented|
        count_id = incremented.count_id

        count = store.fetch(count_id)

        ActionCable.server.broadcast "count-#{count_id}", { count_id: count_id, value: count.value }
      end

      handle Decremented do |decremented|
        count_id = decremented.count_id

        count = store.fetch(count_id)

        ActionCable.server.broadcast "count-#{count_id}", { count_id: count_id, value: count.value }
      end
    end
  end
end
