class Session < ActiveRecord::Base
  validates_presence_of   :name
  validates_uniqueness_of :name

  has_many :session_users
  has_many :users,         :through => :session_users
  has_many :session_roles, :through => :session_users
  
  has_many :tracks
  has_and_belongs_to_many :songs

  define_index do
    indexes :name
    indexes notes
    indexes tracks.name, :as => :track_name
  end

  def track_attributes=(track_attributes)
    track_attributes.each do |attributes|
      tracks.build(attributes)
    end
  end
end
