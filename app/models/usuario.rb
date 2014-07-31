class Usuario < ActiveRecord::Base
def self.logar(nome,senha)
	where(nome: nome, senha: senha).first
end
end
