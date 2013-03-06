class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :schedule_time
      t.integer :interviewee_id
      t.integer :user_id
      t.integer :company_id
      t.string :status
      t.text :remark

      t.timestamps
    end
  end
end
