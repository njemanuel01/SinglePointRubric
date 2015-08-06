json.array!(@objectives) do |objective|
  json.extract! objective, :id, :description, :rubric_id
  json.url objective_url(objective, format: :json)
end
