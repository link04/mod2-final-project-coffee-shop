class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title, presence:true, length: { maximum: 50 }
  validates :content, presence:true, length: { maximum: 2000 }

  def user_likes(user)
    self.likes.include?(user)
  end

  def like_id(user_id)
   like = Like.find_by(blog_id: self.id,user_id: user_id)
   if like != nil
     like.id
   else
     0
   end
  end

end
