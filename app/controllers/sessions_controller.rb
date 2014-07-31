class SessionsController < ApplicationController
	def new
	end
	def create
		nome = params[:nome]
		senha = params[:senha]
		usuario = Usuario.logar(nome,senha)
		if usuario
			session[:usuario_id] = usuario.id
			redirect_to root_path
		else
			redirect_to new_sessions_path, :alert => "Nome ou Senha Invalidos"
		end
	end

	def destroy
		session.reset!
		redirect_to new_sessions_path
	end
end
