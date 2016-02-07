class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :city
      t.string :desc

      t.timestamps null: false
    end
  end
end
