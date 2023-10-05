class CreateWorkspaces < ActiveRecord::Migration[7.0]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :description
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
