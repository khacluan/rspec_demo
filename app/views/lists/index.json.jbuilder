json.array!(@lists) do |list|
  json.extract! list, :id, :name, :description, :published
  json.url list_url(list, format: :json)
end
