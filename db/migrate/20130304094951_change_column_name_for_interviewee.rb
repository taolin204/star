class ChangeColumnNameForInterviewee < ActiveRecord::Migration
  def up
    rename_column :interviewees, :current_country, :country
    rename_column :interviewees, :current_state, :state
  end

  def down
    rename_column :interviewees, :country, :current_country
    rename_column :interviewees, :state, :current_state
  end
end
