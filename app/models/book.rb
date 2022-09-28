class Book < ApplicationRecord
 
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
 
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}
end
