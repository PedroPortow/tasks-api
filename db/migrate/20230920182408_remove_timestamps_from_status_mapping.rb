class RemoveTimestampsFromStatusMapping < ActiveRecord::Migration[7.0]
  def change
    remove_column :status_mappings, :created_at
    remove_column :status_mappings, :updated_at
  end
end
