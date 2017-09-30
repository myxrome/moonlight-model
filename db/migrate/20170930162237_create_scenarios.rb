class CreateScenarios < ActiveRecord::Migration[5.1]
  def change
    create_table :scenarios do |t|
      t.string :title
      t.text :description
      t.integer :order
      t.boolean :active, default: false

      t.timestamps
    end

    add_index :scenarios, [:order]
  end
end
