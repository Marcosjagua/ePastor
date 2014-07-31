json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :senha, :grupo, :email, :ativo
  json.url usuario_url(usuario, format: :json)
end
