class AddPriorityMappingToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :priority_mapping, null: false, foreign_key: true
  end
end
