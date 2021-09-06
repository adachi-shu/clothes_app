class AddArticleToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :category, :string
    add_column :articles, :reason, :string
    add_column :articles, :times, :string
  end
end
