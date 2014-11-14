class User < ActiveRecord::Base
	validates :nomeCompleto, presence: { message: "O preenchimento do nomeCompleto é obrigatório."}
	validates :nomeCompleto, length: { minimum: 5, maximum:100, too_short: "A nome completo deve ter no mínimo %{count} caracteres.", too_long: "A nome completo deve ter no máximo %{count} caracteres." }
	
	validates :email, presence: { message: "O preenchimento do email é obrigatório."}
	validates :email, uniqueness: {message: "já existe."}

    validates :senha, presence: {message: "O preenchimento da senha é obrigatório"}
    validates :senha, length: { minimum: 5, maximum:8, too_short: "A senha deve ter no mínimo %{count} caracteres.", too_long: "A senha deve ter no máximo %{count} caracteres." }

end
