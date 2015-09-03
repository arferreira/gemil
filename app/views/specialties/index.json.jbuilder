json.array!(@specialties) do |specialty|
  json.extract! specialty, :id, :espdesc, :espabrev, :espcodigo, :espgrupo1, :espgrupo2, :espid
  json.url specialty_url(specialty, format: :json)
end
