json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :dob, :breed_id, :medical_conditions, :vet_id, :in_daycare
  json.url dog_url(dog, format: :json)
end
