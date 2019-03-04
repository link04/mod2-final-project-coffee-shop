class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title, presence:true, length: { maximum: 50 }
  validates :content, presence:true, length: { maximum: 400 }

end
