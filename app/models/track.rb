class Track < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name
  
  belongs_to :session
  has_many :connections
  has_many :cables, :through => :connections
  has_many :ports,  :through => :connections
end
