json.array!(@gate_ips) do |gate_ip|
  json.extract! gate_ip, :id, :portao_ip, :portao_biga, :portao_nome, :portao_id
  json.url gate_ip_url(gate_ip, format: :json)
end
