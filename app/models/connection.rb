class Connection < ActiveRecord::Base
  
  belongs_to :track
  belongs_to :port
  belongs_to :cable
end
