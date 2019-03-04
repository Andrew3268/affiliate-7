class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :dealzons
  has_many :blogs
  has_many :gadgets
  has_many :categories
  has_many :acategories
  has_many :ecategories
  has_many :bcategories
end
