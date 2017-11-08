class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.belongs_to :stage, foreign_key: true
      t.text :content
      t.boolean :example, default: false

      t.timestamps
    end
  end
end
