class Sistema < ActiveRecord::Base
	validates :codigo, presence: { message: "O preenchimento do código do sistema do sistema é obrigatório."}
	validates :codigo, uniqueness: {message: "Código do sistema já existe."}
	
	validates :nomecompleto, presence: { message: "O preenchimento do nome do sistema do sistema é obrigatório."}
	validates :nomecompleto, length: { minimum: 5, maximum:100, too_short: "A nome do sistema deve ter no mínimo %{count} caracteres.", too_long: "A nome completo deve ter no máximo %{count} caracteres." }
	
	validates :nomeabreviado, presence: { message: "O preenchimento do nome abreviado é obrigatório."}
	validates :nomeabreviado, uniqueness: {message: "Nome abreviado do sistema já existe."}
end
