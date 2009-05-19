class Port < ActiveRecord::Base
  
  has_many :connections
  has_many :cables, :through => :connections
  has_many :tracks, :through => :connections
  belongs_to :device
  belongs_to :port_type
end
