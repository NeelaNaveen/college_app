json.array!(@courses) do |course|
  json.extract! course, :id, :number, :description, :professor_id, :class_room_id
  json.url course_url(course, format: :json)
end
