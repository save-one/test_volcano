Rails.application.routes.draw do

  devise_for :users
  resources :products do
    #カートアイテム
      resources :cart_items, :only => [:create, :destroy]
  end

#ユーザ
  resources :users, :only => [:index, :show, :edit, :update] do

    put 'users/:id' => 'users#delete', as: 'delete'

    get 'users/:id/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'

    #購入履歴
      resources :purchases, :only => [:index, :show]
  end

#カート
  resources :carts, :only => [:new, :create, :show]

    get 'carts/:id/select' => 'carts#select', as: 'select'

    get 'carts/:id/confirm' => 'carts#confirm', as: 'confirm'

    get 'carts/:id/complete' => 'carts#complete', as: 'complete'

    post 'carts/:id/confirm' => 'carts#purchase', as: 'purchase'

    put 'carts/:id/confirm' => 'carts#flg', as: 'flg'

#購入履歴
  resources :purchases, :only => [:index, :show]





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
