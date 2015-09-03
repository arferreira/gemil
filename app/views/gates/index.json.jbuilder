json.array!(@gates) do |gate|
  json.extract! gate, :id, :portao_nome, :portao_nivel_acesso, :portao_ativo, :portao_id, :portao_tipo
  json.url gate_url(gate, format: :json)
end
