class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, lenth:{in 15..400}
  validates :body, presence: true
end
