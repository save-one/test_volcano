class CartItemsController < ApplicationController
#createで、.newと.saveを同時に行ってしまう　paramsは、idだとは限らない
def create
	product = params[:productproduct_id]
	cart = Cart.where(customer_id: current_user.id).last
	# cart_item = CartItem.new
	cart_item = CartItem.new
	cart_item.attributes = {productproduct_id: params[:productproduct_id], cartcart_id: cart.id}
	# cart_item = CartItem.new(cart_item_params)
	# cart_item.product_id = product.id
	# cart_item.cart_id = cart.id
	# cart_item.user_id = current_user.id
	cart_item.save(validate: false)
	redirect_to cart_path(cart.id)
end

#(:user_id => current_user.id, :product_id => product.id, :cart_id => cart.id)

def destroy
end


private

# def cart_item_params
# 	params.require(:cart_item).permit(:product_id, :user_id, :cart_id)
# end




end
