class DropScheduleEntries < ActiveRecord::Migration[6.0]
  def change
    drop_table :schedule_entries
  end
end
