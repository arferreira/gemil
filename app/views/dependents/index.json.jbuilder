json.array!(@dependents) do |dependent|
  json.extract! dependent, :id, :pesdepnome, :pesdepgrau, :pesdepsexo, :pesdepdn, :pescodigo, :pesdepboletimnum, :pesdepboletimdata, :pesdepompub, :pesdepradionum, :pesdepradiodata, :pesdepirrf, :pesdeptiposaram, :pesdeptipo, :pesdepuser, :pesdepdatacad, :pesdepid, :pesdeppesid, :pesdepdatacas, :pes_cracha_id, :pes_cracha_val
  json.url dependent_url(dependent, format: :json)
end
