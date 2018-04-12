json.extract! product, :id, :cd_title, :artist, :picture_id, :sound_source, :price, :label, :genre, :stock, :start_date, :product_flg, :created_at, :updated_at
json.url product_url(product, format: :json)
