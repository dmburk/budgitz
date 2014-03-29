class Bill < ActiveRecord::Base
  attr_accessor :name, :due_day
  validates :name, :presence => true
end
