class Blog < ActiveRecord::Base
  belongs_to :user
  belongs_to :bcategory
end
