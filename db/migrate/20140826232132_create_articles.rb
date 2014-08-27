class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :price
      t.string :email
      t.string :description
      t.string :password
      t.belongs_to :category
      t.timestamps
    end
  end
end
