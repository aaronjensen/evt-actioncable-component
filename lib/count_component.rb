require "eventide/postgres"

require "count_component/messages/commands/decrement"
require "count_component/messages/commands/increment"
require "count_component/messages/events/decremented"
require "count_component/messages/events/incremented"

require "count_component/count"
require "count_component/projection"
require "count_component/store"

require "count_component/handlers/commands"
require "count_component/handlers/events"

require "count_component/consumers/commands"
require "count_component/consumers/events"

require "count_component/start"
