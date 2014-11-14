class CreateSistemas < ActiveRecord::Migration
  def change
    create_table :sistemas do |t|
      t.integer :codigo
      t.string :nomeabreviado
      t.string :nomecompleto
      t.boolean :ativo

      t.timestamps
    end
  end
end
