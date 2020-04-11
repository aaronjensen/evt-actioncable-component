# Entity user guide: http://docs.eventide-project.org/user-guide/entities.html
# Entity snapshotting user guide: http://docs.eventide-project.org/user-guide/entity-store/snapshotting.html

module CountComponent
  class Count
    include Schema::DataStructure

    attribute :id, String
    attribute :value, Numeric, default: 0

    def increment
      self.value += 1
    end

    def decrement
      self.value -= 1
    end
  end
end
