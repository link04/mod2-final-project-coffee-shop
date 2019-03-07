class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title, presence:true, length: { maximum: 150 }
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

  def self.most_popular_blogs(user)
    CoffeeShop.coffee_shop_blogs(user).sort_by do |blog|
      -blog.likes.count
    end[0..2]
  end

end
