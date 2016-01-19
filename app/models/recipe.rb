class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :boxes
  has_many :favorites
  has_many :users, through: :favorites
end
