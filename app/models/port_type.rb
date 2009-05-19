class PortType < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name
  
  has_many :ports
end
