class User < ApplicationRecord
  
  belongs_to :zone
  has_one :admin_zone
  has_many :posts
  has_many :comments
  has_many :votes
  has_many :innappropiate_requests

  validates :name, format: {with: /\A[a-zA-Z]+\z/}
  validates :last_name, format: {with: /\A[a-zA-Z]+\z/}
  validates :user_type, inclusion: {in: %w(User Administrator Super_administrator)} 
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, length: {in: 8..12} 
  validates :password, format: { with: /\A[a-z0-9A-Z]+\z/, message: "only allows alphanumeric characters" }
  validates :bio, length: {in: 15..80}
  validates :city, format: {with: /\A[a-zA-Z]+\z/}
  validates :country, format: {with: /\A[a-zA-Z]+\z/}    
  validates :user_type, :name, :last_name, :email_address, :password, :city, :country, :in_blacklist, :suspended, :previously_suspension, presence: true
  validates :email_address, uniqueness: true

end
