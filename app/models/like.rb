class Like < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates_uniqueness_of :user, scope: :blog
  validates :user, presence:true
  validates :blog, presence:true

end
