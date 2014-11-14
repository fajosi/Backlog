class CreateClassificacaos < ActiveRecord::Migration
  def change
    create_table :classificacaos do |t|
      t.string :descricao
      t.references :categorias, index: true
      t.boolean :ativo

      t.timestamps
    end
  end
end
