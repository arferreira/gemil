json.array!(@situations) do |situation|
  json.extract! situation, :id, :situacaodesc, :situacaoabrev, :situacaoid
  json.url situation_url(situation, format: :json)
end
