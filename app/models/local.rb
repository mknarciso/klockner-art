class Local < ActiveRecord::Base
    has_many :quadros
    accepts_nested_attributes_for :quadros
end
