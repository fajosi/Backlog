class CreateClassificacaobacklogs < ActiveRecord::Migration
  def change
    create_table :classificacaobacklogs do |t|
      t.string :classificacao
      t.string :ativo

      t.timestamps
    end
  end
end
