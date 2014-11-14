class CreateStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :descricao
      t.references :categorias, index: true
	  t.boolean :ativo
	  
      t.timestamps
    end
  end
end
