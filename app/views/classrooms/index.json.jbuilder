json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :name, :building_id, :occupancy
  json.url classroom_url(classroom, format: :json)
end
