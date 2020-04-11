# Component initiator user guide: http://docs.eventide-project.org/user-guide/component-host.html#component-initiator

module CountComponent
  module Start
    def self.call
      Consumers::Commands.start('count:command')
      Consumers::Events.start('count')
    end
  end
end
