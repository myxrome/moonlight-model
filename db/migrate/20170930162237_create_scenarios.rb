class CreateScenarios < ActiveRecord::Migration[5.1]
  def change
    create_table :scenarios do |t|
      t.string :title
      t.text :description
      t.string :key
      t.boolean :active, default: false
      t.integer :order

      t.timestamps
    end

    add_index :scenarios, :active
    add_index :scenarios, :key, unique: true
  end
end
