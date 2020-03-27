class RemoveDateFromToDos < ActiveRecord::Migration[6.0]
  def change

    remove_column :to_dos, :date, :date
  end
end
