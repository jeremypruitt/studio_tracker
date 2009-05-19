class Device < ActiveRecord::Base
  validates_presence_of   :inventory_number
  validates_uniqueness_of :inventory_number
  
  has_many :ports
  belongs_to :user
  belongs_to :manufacturer
  belongs_to :device_type
end
