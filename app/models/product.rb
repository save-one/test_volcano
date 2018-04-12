class Product < ApplicationRecord
	# belongs_to :cart_item
	has_many :carts, through: :cart_items
end
