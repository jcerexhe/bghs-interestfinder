json.array!(@interest_groups) do |interest_group|
  json.extract! interest_group, :id, :name, :description, :image, :user_id
  json.url interest_group_url(interest_group, format: :json)
end
