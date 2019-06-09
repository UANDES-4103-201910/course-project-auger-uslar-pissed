class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :votes
  acts_as_likeable

  validates :description, length:{in: 20..500}
  validates :description, presence: true


end
