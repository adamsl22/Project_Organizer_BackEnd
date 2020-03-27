class RemoveEndtimeFromToDos < ActiveRecord::Migration[6.0]
  def change

    remove_column :to_dos, :endtime, :time
  end
end
