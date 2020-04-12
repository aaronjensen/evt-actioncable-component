module CountComponent
  module Controls
    module Write
      module Decrement
        def self.call(count_id: nil)
          count_id ||= Count.id

          decrement = Commands::Decrement.example(count_id: count_id)

          stream_name = Messaging::StreamName.command_stream_name(count_id, "count")

          Messaging::Postgres::Write.(decrement, stream_name)
        end
      end
    end
  end
end
