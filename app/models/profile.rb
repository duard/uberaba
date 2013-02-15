class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :birthdate, :fullname, :user_id
end
