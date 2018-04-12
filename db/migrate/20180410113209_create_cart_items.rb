class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.integer :purchase_id
      t.references :product_id
      t.integer :sale
      t.boolean :cart_item_flg
      t.integer :price
      t.references :cart_id

      t.timestamps
    end
  end
end
