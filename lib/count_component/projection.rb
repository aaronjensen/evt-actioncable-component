# Projection user guide: http://docs.eventide-project.org/user-guide/projection.html
# Message user guide: http://docs.eventide-project.org/user-guide/messages-and-message-data/

module CountComponent
  class Projection
    include EntityProjection
    include Messages::Events

    entity_name :count

    apply Incremented do |_incremented|
      count.increment
    end

    apply Decremented do |_decremented|
      count.decrement
    end
  end
end
