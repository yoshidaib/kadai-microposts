class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: {maximum: 255}
  
  has_many :reverses_of_favorites, class_name: 'Favorite', foreign_key: 'micropost_id', dependent: :destroy
  
end
