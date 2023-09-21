class CreatePriorityMappings < ActiveRecord::Migration[7.0]
  def change
    create_table :priority_mappings do |t|
      t.integer :priority
      t.string :text

      t.timestamps
    end
  end
end
