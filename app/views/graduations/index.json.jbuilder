json.array!(@graduations) do |graduation|
  json.extract! graduation, :id, :pgdesc, :pgabrev, :pgabrevtdp, :pgrefeitorio, :pggrupo1, :pggrupotdp, :pgclasse, :pgid, :pggrupo2, :pgpronome, :pgpronome2, :pgabrev1
  json.url graduation_url(graduation, format: :json)
end
