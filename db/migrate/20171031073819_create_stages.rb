class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.belongs_to :scenario, foreign_key: true
      t.integer :order
      t.integer :duration, default: 0

      t.timestamps
    end

    add_index :stages, [:scenario_id, :order]
  end
end
