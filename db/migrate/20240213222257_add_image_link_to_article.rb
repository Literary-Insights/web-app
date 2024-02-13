class AddImageLinkToArticle < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :image_link, :string
  end
end
