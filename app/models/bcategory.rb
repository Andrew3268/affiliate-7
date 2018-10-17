class Bcategory < ActiveRecord::Base
  has_many :blogs
  belongs_to :user
end
