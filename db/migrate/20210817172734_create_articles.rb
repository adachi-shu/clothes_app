class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :cloth_name, null: false
      t.integer :cloth_price, null: false

      t.timestamps
    end
  end
end
