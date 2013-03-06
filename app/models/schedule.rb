class Schedule < ActiveRecord::Base
  attr_accessible :user_id, :company_id, :interviewee_id, :remark, :schedule_time, :status
  
  belongs_to :user
  belongs_to :company
  belongs_to :interviewee

end
