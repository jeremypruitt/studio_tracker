class Song < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name

  belongs_to :project
  has_and_belongs_to_many :sessions
end
