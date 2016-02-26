class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :boxes
  belongs_to :user
  # belongs_to :boxes
  # has_many :favorites
  # has_many :users, through: :favorites
end



# class Recipe < ActiveRecord::Base
#
#   belongs_to :user
#   has_many :boxes
#   has_many :users, through: :boxes
#
#   # belongs_to :boxes
#   # has_many :favorites
#   # has_many :users, through: :favorites
# end
