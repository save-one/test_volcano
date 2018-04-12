class RemoveProductFromCartItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :cart_items, :product_id, :integer
  end
end
