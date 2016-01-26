json.array!(@professors) do |professor|
  json.extract! professor, :id, :name, :email, :phone, :department_id
  json.url professor_url(professor, format: :json)
end
