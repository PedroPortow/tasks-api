class RemovePriorityFromTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :priority, :string
  end
end
