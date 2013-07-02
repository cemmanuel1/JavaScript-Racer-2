class Race < ActiveRecord::Base
  has_many :runs
  has_many :players, through: :runs
  # Remember to create a migration!
end
