class AdjustQuadros < ActiveRecord::Migration
  def change
    remove_column :quadros, :onde
    remove_column :quadros, :img
    add_column :quadros, :local_id, :integer
    add_column :quadros, :galeria, :boolean, default: true
  end
end
