class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :vote
  validates :body, lenth:{in 15..400}
  validates :body, presence: true
end
