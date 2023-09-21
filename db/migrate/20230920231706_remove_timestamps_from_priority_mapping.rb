class RemoveTimestampsFromPriorityMapping < ActiveRecord::Migration[7.0]
  def change
    remove_column :priority_mappings, :created_at, :datetime
    remove_column :priority_mappings, :updated_at, :datetime
  end
end
