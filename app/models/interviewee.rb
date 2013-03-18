class Interviewee < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :nationality, :postal_code, :gender,
  					:race, :mobile, :telephone, :religion, :email, :dob, :specialization, :prefer_industry,
  					:country, :state, :willing_travel, :willing_relocate, :job_nature, :language, :remark, :pic
  has_many :schedules, dependent: :destroy

  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
