class CreateStatusMappings < ActiveRecord::Migration[7.0]
  def change
    create_table :status_mappings do |t|
      t.integer :status
      t.string :text

      t.timestamps
    end
  end
end
