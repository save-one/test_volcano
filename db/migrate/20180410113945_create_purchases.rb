class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :p_code
      t.string :d_region
      t.string :d_street
      t.string :d_street_bunch
      t.string :d_room_no
      t.string :d_name
      t.boolean :purchase_flg
      t.string :status
      t.string :pay

      t.timestamps
    end
  end
end
