# Handler user guide: http://docs.eventide-project.org/user-guide/handlers.html
# Message user guide: http://docs.eventide-project.org/user-guide/messages-and-message-data/

module CountComponent
  module Handlers
    class Commands
      include Messaging::Handle
      include Messaging::StreamName
      include Log::Dependency
      include Messages::Commands
      include Messages::Events

      dependency :write, Messaging::Postgres::Write
      dependency :clock, Clock::UTC
      dependency :store, Store

      def configure
        Messaging::Postgres::Write.configure(self)
        Clock::UTC.configure(self)
        Store.configure(self)
      end

      category :count

      handle Increment do |increment|
        count_id = increment.count_id

        stream_name = stream_name(count_id)

        incremented = Incremented.follow(increment)

        write.(incremented, stream_name)
      end

      handle Decrement do |decrement|
        count_id = decrement.count_id

        stream_name = stream_name(count_id)

        decremented = Incremented.follow(increment)

        write.(decremented, stream_name)
      end
    end
  end
end
