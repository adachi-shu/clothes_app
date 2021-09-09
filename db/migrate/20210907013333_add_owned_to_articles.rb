class AddOwnedToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :owned, :boolean, default: false
  end
end
