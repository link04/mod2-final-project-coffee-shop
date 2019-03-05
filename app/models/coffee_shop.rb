class CoffeeShop < ApplicationRecord
  has_many :users
  has_many :blogs, through: :users

  validates :name, presence:true, uniqueness:true

  # def self.find_coffee_shop_blogs(user_id)
  #
  # end



end
