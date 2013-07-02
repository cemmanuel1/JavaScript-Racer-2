class Player < ActiveRecord::Base
  has_many :runs
  has_many :races, through: :runs
  validates :name, uniqueness: true

end
