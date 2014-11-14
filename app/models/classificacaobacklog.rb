class Classificacaobacklog < ActiveRecord::Base
	validates :classificacao, presence: { message: "O preenchimento do classificação é obrigatório."}
	validates :classificacao, uniqueness: {message: "Classificação já existe."}
	validates :classificacao, length: { minimum: 3, maximum:100, too_short: "A classificação deve ter no mínimo %{count} caracteres.", too_long: "A nome completo deve ter no máximo %{count} caracteres." }
end
