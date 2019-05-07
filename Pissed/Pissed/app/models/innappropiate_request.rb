class InnappropiateRequest < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :title, format: {with: /\A[a-zA-Z]+\z/}, length: {in 5..60}
  validates :justification, length: {in 15..400}
end
