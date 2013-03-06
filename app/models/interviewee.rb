class Interviewee < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :nationality, :postal_code, :gender,
  					:race, :mobile, :telephone, :religion, :email, :dob, :specialization, :prefer_industry,
  					:country, :state, :willing_travel, :willing_relocate, :job_nature, :language, :remark
  has_many :schedules, dependent: :destroy
end
