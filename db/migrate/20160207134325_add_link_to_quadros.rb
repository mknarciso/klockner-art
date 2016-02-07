class AddLinkToQuadros < ActiveRecord::Migration
  def change
    add_column :quadros, :link, :string
  end
end
