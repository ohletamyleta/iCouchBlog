class User < ApplicationRecord

  validates :name, :email, presence: true 
  validates :name, :email, uniqueness: true
  has_secure_password

  has_many :posts
end




