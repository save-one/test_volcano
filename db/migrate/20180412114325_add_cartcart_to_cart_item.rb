class AddCartcartToCartItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :cart_items, :cartcart, foreign_key: true
  end
end
