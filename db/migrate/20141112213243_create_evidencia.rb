class CreateEvidencia < ActiveRecord::Migration
  def change
    create_table :evidencia do |t|
      t.string :descricao
      t.string :link

      t.timestamps
    end
  end
end
