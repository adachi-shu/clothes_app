class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :cloth_name
      t.integer :cloth_price

      t.timestamps
    end
  end
end
