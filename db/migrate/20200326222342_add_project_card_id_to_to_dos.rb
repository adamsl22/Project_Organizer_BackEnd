class AddProjectCardIdToToDos < ActiveRecord::Migration[6.0]
  def change
    add_column :to_dos, :project_card_id, :integer
  end
end
