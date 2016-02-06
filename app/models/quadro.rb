class Quadro < ActiveRecord::Base
    
    has_attached_file :foto, styles: {
        large: '1600x800>',
        medium: '300x300>',
        small: '140x140>',
        square: '140x140#',
        thumb: '64x64#'
    }
    validates_attachment_content_type :foto, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
