class AddStatusMppaingReferenceToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :status_mapping, null: false, foreign_key: true
  end
end
