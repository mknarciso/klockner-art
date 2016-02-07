class Quadro < ActiveRecord::Base
    belongs_to :local
    accepts_nested_attributes_for :local
    
    has_attached_file :foto, styles: {
        large: '1600x800>',
        medium: '500x500>',
        small: '140x140>',
        square: '300x300#',
        thumb: '64x64#'
    }
    validates_attachment_content_type :foto, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
