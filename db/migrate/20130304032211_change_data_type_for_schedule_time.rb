class ChangeDataTypeForScheduleTime < ActiveRecord::Migration
  def self.up
    change_table :schedules do |t|
      t.change :schedule_time, :datetime
    end
  end
  def self.down
    change_table :schedules do |t|
      t.change :schedule_time, :date
    end
  end
end
