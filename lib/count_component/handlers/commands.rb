# Handler user guide: http://docs.eventide-project.org/user-guide/handlers.html
# Message user guide: http://docs.eventide-project.org/user-guide/messages-and-message-data/

module CountComponent
  module Handlers
    class Commands
      include Messaging::Handle
      include Messaging::StreamName
      include Log::Dependency
      # TODO include Messages::Commands once commands are implemented
      # include Messages::Commands
      # TODO include Messages::Events once events are implemented
      # include Messages::Events

      dependency :write, Messaging::Postgres::Write
      dependency :clock, Clock::UTC
      dependency :store, Store

      def configure
        Messaging::Postgres::Write.configure(self)
        Clock::UTC.configure(self)
        Store.configure(self)
      end

      category :count

      # TODO Implement command handler blocks"
      # eg:
      # handle DoSomething do |do_something|
      #   count_id = do_something.count_id

      #   count, version = store.fetch(count_id, include: :version)

      #   if count.something_happened?
      #     logger.info(tag: :ignored) { "Command ignored (Command: #{do_something.message_type}, Count ID: #{count_id})" }
      #     return
      #   end

      #   something_happened = SomethingHappened.follow(do_something)

      #   something_happened.processed_time = clock.iso8601

      #   stream_name = stream_name(count_id)

      #   write.(something_happened, stream_name, expected_version: version)
      # end
    end
  end
end
