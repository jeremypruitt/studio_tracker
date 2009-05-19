class User < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name
  validates_presence_of   :email
  validates_uniqueness_of :email
  
  has_many :project_users
  has_many :projects,         :through => :project_users
  has_many :roles,    :through => :project_users
  
  has_many :session_users
  has_many :sessions,      :through => :session_users
  has_many :session_roles, :through => :session_users
end
