class CoffeeShop < ApplicationRecord
  has_many :users
  has_many :blogs, through: :users

  validates :name, presence:true, uniqueness:true

  def self.coffee_shop_blogs(user)
    unsorted_blogs = self.all.find(user.coffee_shop.id).blogs
    unsorted_blogs.sort_by do |blog|
      blog.id
    end
  end

end
