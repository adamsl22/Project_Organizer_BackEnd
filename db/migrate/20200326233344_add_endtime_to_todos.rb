class AddEndtimeToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :endtime, :string
  end
end
