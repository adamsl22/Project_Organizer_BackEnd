class AddDateAndTimesToToDos < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :date, :date
    add_column :to_dos, :starttime, :time
    add_column :to_dos, :endtime, :time
  end
end
