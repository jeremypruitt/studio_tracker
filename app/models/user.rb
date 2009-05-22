class User < ActiveRecord::Base
  acts_as_authentic

  validates_presence_of   :username
  validates_uniqueness_of :username
  validates_presence_of   :email
  validates_uniqueness_of :email
  
  has_many :project_users
  has_many :projects,         :through => :project_users
  has_many :roles,    :through => :project_users
  
  has_many :session_users
  has_many :sessions,      :through => :session_users
  has_many :session_roles, :through => :session_users

  define_index do
    indexes username
    indexes display_name
    indexes email
    indexes notes
  end
end
