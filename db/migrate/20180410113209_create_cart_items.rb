class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.integer :purchase_id
      t.integer :product_id
      t.integer :sale
      t.boolean :cart_item_flg
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
