class Acategory < ActiveRecord::Base
  has_many :dealzons
  belongs_to :user
end
