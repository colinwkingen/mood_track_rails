class Day < ActiveRecord::Base
  has_one :profile
  validates :sleep, :presence => true
  validates :note, :presence => true
  validates :mood, :presence => true
  validates :money_spent, :presence => true
  validates :profile_id, :presence => true
end
