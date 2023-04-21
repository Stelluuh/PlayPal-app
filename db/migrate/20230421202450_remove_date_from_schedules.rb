class RemoveDateFromSchedules < ActiveRecord::Migration[6.1]
  def change
    remove_column :schedules, :date, :string
  end
end
