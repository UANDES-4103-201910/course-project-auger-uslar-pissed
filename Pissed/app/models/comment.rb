class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :votes
  
  validates :body, length:{20..500}
  validates :body, presence: true
end
