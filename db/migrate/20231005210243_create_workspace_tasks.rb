class CreateWorkspaceTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :workspace_tasks do |t|
      t.references :task, null: false, foreign_key: true
      t.references :workspace, null: false, foreign_key: true

      t.timestamps
    end
  end
end
