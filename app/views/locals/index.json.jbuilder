json.array!(@locals) do |local|
  json.extract! local, :id, :name, :city, :desc
  json.url local_url(local, format: :json)
end
