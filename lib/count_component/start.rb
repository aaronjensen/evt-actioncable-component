# Component initiator user guide: http://docs.eventide-project.org/user-guide/component-host.html#component-initiator

module CountComponent
  module Start
    def self.call
      Consumers::Commands.start("count:command", poll_interval_milliseconds: 10)
      Consumers::Events.start("count", poll_interval_milliseconds: 10)
    end
  end
end
