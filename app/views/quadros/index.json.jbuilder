json.array!(@quadros) do |quadro|
  json.extract! quadro, :id, :num, :alt, :larg, :tec, :price, :ano, :onde, :img
  json.url quadro_url(quadro, format: :json)
end
