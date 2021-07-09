class Post < ApplicationRecord
    validates :title, :contenido, presence: true
    validates :title, length: { maximum: 255 }
    validates :contenido, length: { maximum: 1400 }
    
end
