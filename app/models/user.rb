class User < ApplicationRecord
  has_many :blogs
  has_many :likes
  has_many :liked_blogs, through: :likes, source: :blog
  has_many :comments
  has_many :commented_blogs, through: :comments, source: :blog
  belongs_to :coffee_shop
  has_secure_password

  validates :full_name, presence:true
  validates :user_name, presence:true, uniqueness:true
  validates :password, presence:true

  def self.get_logged_user(user_id)
    self.find(user_id)
  end

end
