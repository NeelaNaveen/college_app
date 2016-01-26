json.array!(@registration_rooms) do |registration_room|
  json.extract! registration_room, :id, :students_id, :courses_id, :semester
  json.url registration_room_url(registration_room, format: :json)
end
