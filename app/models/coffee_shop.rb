class CoffeeShop < ApplicationRecord
  has_many :users
  has_many :blogs, through: :users

  validates :name, presence:true, uniqueness:true

end
