class RemoveProjectIdFromToDos < ActiveRecord::Migration[6.0]
  def change
    remove_column :to_dos, :project_id, :integer
  end
end
