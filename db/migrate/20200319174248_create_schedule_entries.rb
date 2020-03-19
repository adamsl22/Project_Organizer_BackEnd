class CreateScheduleEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_entries do |t|
      t.date :date
      t.time :starttime
      t.time :endtime
      t.integer :project_id

      t.timestamps
    end
  end
end
