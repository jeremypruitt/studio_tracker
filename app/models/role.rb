class Role < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name

  has_many :project_users
  has_many :users,    :through => :project_users
  has_many :projects, :through => :project_users
end
