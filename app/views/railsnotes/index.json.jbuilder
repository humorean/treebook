json.array!(@railsnotes) do |railsnote|
  json.extract! railsnote, :id, :title, :content, :JS_Equilavent
  json.url railsnote_url(railsnote, format: :json)
end
