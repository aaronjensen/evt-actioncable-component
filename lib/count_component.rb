require 'eventide/postgres'

# TODO Load command and event message files"
# require 'count_component/messages/commands/...'
# require 'count_component/messages/events/...'

require 'count_component/count'
require 'count_component/projection'
require 'count_component/store'

require 'count_component/handlers/commands'
require 'count_component/handlers/events'

require 'count_component/consumers/commands'
require 'count_component/consumers/events'

require 'count_component/start'
