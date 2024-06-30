class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.string :title
      t.string :description
      t.integer :views_count, default: 0

      t.timestamps
    end
  end
end
