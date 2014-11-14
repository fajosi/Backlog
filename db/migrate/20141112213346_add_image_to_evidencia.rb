class AddImageToEvidencia < ActiveRecord::Migration
  def self.up
    add_attachment :evidencia, :imagem
  end
  
  def self.down
    remove_attachment :evidencia, :imagem
  end
end
