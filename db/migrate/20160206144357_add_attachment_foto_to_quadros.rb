class AddAttachmentFotoToQuadros < ActiveRecord::Migration
  def self.up
    change_table :quadros do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :quadros, :foto
  end
end
