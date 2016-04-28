json.array!(@yeahs) do |yeah|
  json.extract! yeah, :id, :wtf
  json.url yeah_url(yeah, format: :json)
end
