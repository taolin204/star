class Interviewee < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :nationality, :postal_code
  has_many :schedules, dependent: :destroy
end
