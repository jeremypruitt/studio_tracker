class Cable < ActiveRecord::Base
  validates_presence_of   :inventory_number
  validates_uniqueness_of :inventory_number
  
  belongs_to :cable_type
  has_many :connections
  has_many :ports,  :through => :connections
  has_many :tracks, :through => :connections
end
