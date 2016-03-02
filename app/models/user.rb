class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :boxes
  has_many :recipes
  # has many :recipes, through: :favorites
  # has_many :favorites
end

# class User < ActiveRecord::Base
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :trackable, :validatable
#
#
#   has_many :recipes
#   has_many :boxes
#   has_many :recipes, through: :boxes
#
#
#   # has_many :favorites
#   # This breaks the app... why?
#   # has many :recipes, through: :favorites
# end
