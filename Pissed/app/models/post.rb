class Post < ApplicationRecord

  belongs_to :user
  belongs_to :zone
  has_many :votes
  has_many :comments
  has_many :innappropiate_requests
  has_one_attached :avatar

  validates :title, format: {with: /\A[a-zA-Z]+\z/}, length: {in: 5..60}
  validates :description, length: {in: 15..400}
  validates :city, format: {with: /\A[a-zA-Z]+\z/}
  validates :country, format: {with: /\A[a-zA-Z]+\z/}
  validates :title, :description, :date, :city, :country, presence: true


end
