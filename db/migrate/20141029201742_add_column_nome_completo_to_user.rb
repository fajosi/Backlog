class AddColumnNomeCompletoToUser < ActiveRecord::Migration
  def change
    add_column :users, :nomeCompleto, :string
  end
end
