class AddDateToToDos < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :date, :string
  end
end
