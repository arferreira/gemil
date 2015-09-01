json.array!(@posto_graduacaos) do |posto_graduacao|
  json.extract! posto_graduacao, :id, :name
  json.url posto_graduacao_url(posto_graduacao, format: :json)
end
