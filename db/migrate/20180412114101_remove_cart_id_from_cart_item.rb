class RemoveCartIdFromCartItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :cart_items, :cart, :integer
  end
end
