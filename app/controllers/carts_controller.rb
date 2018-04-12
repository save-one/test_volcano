class CartsController < ApplicationController

  def new
  # 	@cart = Cart.new
  # 	@cart.attributes = {customer_id: current_user.id, flg: 0}

  # 	render "/carts", method: :post
  # 	# redirect_to :action => "create", method: :post
  end

  def show
  	# @cart_items = Cart.find_by(customer_id: current_user.id, flg: 0).last
  	# @cart = Cart.where(customer_id: params[:user_id]).last
  	# @cart = Cart.find(params[:id])
  	# @cart_items = CartItem.where(cart_id: @cart.id) #_が入るテーブル名は、_ぬかして大文字からだぞ
# 惜しかったもの↓
    # @cart = Cart.find(params[:id])
  	# @cart_items = CartItem.where(cart_id: @cart.id)

    @cart = Cart.find(params[:id])


  end

  def select
  end

  def confirm
  end

  def complete
  end

  def create
  	# cart = @cart
  	cart = Cart.new
  	cart.attributes = {customer_id: current_user.id, cart_flg: false}

  	# cart_params = params.require(:cart).permit(:customer_id,:flg)
  	# cart = Cart.new(cart_params)

  	#cart = Cart.new(cart_params)
  	# cart.user_id = current_user.id
  	# cart.flg = 0
  	cart.save(validate: false)
  	redirect_to cart_path(cart.id)
  end

  private

  # def cart_params
  # 	params.require(:cart).permit(:customer_id,:flg)
  # end
end
