class Ecategory < ActiveRecord::Base
  has_many :events
  belongs_to :user
end
