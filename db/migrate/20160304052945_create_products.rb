class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :img_url
      t.integer :price
      t.string :category
    end
  end
end
