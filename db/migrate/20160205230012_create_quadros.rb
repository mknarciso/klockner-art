class CreateQuadros < ActiveRecord::Migration
  def change
    create_table :quadros do |t|
      t.integer :num
      t.integer :alt
      t.integer :larg
      t.string :tec
      t.integer :price
      t.integer :ano
      t.integer :onde
      t.string :img
      t.timestamps
    end
  end
end
