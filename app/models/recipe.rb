class Recipe < ActiveRecord::Base

  has_and_belongs_to_many :boxes
  belongs_to :user
  has_many :favorites

end
