class AddStarttimeToToDos < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :starttime, :string
  end
end
