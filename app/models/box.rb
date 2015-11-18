class Box < ActiveRecord::Base
  belongs_to :user
  has_many :recipes, through: :users
end
