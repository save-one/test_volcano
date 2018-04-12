class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :cart_items, through: :carts
    has_many :carts
	#dependent 紐づくものが削除されたら、このデータも削除する
end
