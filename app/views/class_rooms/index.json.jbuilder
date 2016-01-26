json.array!(@class_rooms) do |class_room|
  json.extract! class_room, :id, :number, :building
  json.url class_room_url(class_room, format: :json)
end
