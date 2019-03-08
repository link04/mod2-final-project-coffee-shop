class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :user, presence:true
  validates :blog, presence:true
  validates :content, presence:true, length: { maximum: 400 }

end
