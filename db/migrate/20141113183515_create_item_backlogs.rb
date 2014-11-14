class CreateItemBacklogs < ActiveRecord::Migration
  def change
    create_table :item_backlogs do |t|
      t.string :descricao
      t.integer :prioridade
      t.date :dataconclusao
      t.string :observacao
      t.references :sistema, index: true
      t.integer :tempoestimado
      t.references :status, index: true
      t.references :classificacao, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
