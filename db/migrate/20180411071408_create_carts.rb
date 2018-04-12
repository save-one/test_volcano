class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.boolean :cart_flg

      t.timestamps
    end
  end
end
