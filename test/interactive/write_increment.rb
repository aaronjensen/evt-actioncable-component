require_relative "./interactive_init"

count_id = Controls::Count.id

Controls::Write::Increment.(
  count_id: count_id,
)
