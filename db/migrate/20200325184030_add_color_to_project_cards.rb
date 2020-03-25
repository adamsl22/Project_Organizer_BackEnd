class AddColorToProjectCards < ActiveRecord::Migration[6.0]
  def change
    add_column :project_cards, :color, :string
  end
end
