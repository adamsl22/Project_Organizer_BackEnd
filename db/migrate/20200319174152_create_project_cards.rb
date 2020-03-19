class CreateProjectCards < ActiveRecord::Migration[6.0]
  def change
    create_table :project_cards do |t|
      t.string :name
      t.string :logo
      t.string :description
      t.string :status
      t.string :todos
      t.string :repo_link
      t.string :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
