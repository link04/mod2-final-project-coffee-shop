class CoffeeShop < ApplicationRecord
  has_many :users
  has_many :blogs, through: :users

  validates :name, presence:true, uniqueness:true

  def self.coffee_shop_blogs(user)
    self.all.find(user.coffee_shop.id).blogs
  end

end
