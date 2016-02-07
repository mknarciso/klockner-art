class AddVendidoToQuadros < ActiveRecord::Migration
  def change
    add_column :quadros, :vendido, :boolean, default: false
  end
end
