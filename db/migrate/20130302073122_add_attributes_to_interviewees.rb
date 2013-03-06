class AddAttributesToInterviewees < ActiveRecord::Migration
  def change
    add_column :interviewees, :gender, :string
    add_column :interviewees, :race, :string
    add_column :interviewees, :mobile, :string
    add_column :interviewees, :telephone, :string
    add_column :interviewees, :religion, :string
    add_column :interviewees, :email, :string
    add_column :interviewees, :dob, :date
    add_column :interviewees, :specialization, :string
    add_column :interviewees, :prefer_industry, :string
    add_column :interviewees, :current_country, :string
    add_column :interviewees, :current_state, :string
    add_column :interviewees, :willing_travel, :integer
    add_column :interviewees, :willing_relocate, :integer
    add_column :interviewees, :job_nature, :string
    add_column :interviewees, :language, :string
    add_column :interviewees, :remark, :text
  end
end
