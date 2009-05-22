class Project < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name

  has_many :songs
  has_many :project_users
  has_many :users, :through => :project_users
  has_many :roles, :through => :project_users

  define_index do
    indexes :name
    indexes notes
  end
end
