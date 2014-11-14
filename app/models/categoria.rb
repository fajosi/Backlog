class Categoria < ActiveRecord::Base
	validates :descricao, presence: { message: "O preenchimento da descrição da categoria é obrigatório."}
	validates :descricao, length: { minimum: 4, maximum:50, too_short: "A descrição da categoria deve ter no mínimo %{count} caracteres.", too_long: "A descrição da categoria no máximo %{count} caracteres." }
end
