class User < ApplicationRecord 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable, 
         :recoverable, :rememberable, :validatable, :authentication_keys => [:email] 
  validates :username, presence: true
  validates :username, uniqueness: true
  has_many :comments
end
