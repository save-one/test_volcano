class AddProductproductToCartItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :cart_items, :productproduct, foreign_key: true
  end
end
