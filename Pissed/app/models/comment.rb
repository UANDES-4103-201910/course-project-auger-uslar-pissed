class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :votes
  has_many :comments
  belongs_to :comment, optional: true
  acts_as_likeable

  validates :description, presence: true


end
