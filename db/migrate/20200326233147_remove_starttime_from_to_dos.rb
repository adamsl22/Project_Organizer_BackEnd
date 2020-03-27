class RemoveStarttimeFromToDos < ActiveRecord::Migration[6.0]
  def change

    remove_column :to_dos, :starttime, :time
  end
end
