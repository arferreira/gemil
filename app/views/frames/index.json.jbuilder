json.array!(@frames) do |frame|
  json.extract! frame, :id, :quadrodesc, :quadroabrev, :quadrogrupo, :quadroid
  json.url frame_url(frame, format: :json)
end
