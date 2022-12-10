class AddShopNameToPostimage < ActiveRecord::Migration[6.1]
  def change
    add_column :postimages, :shop_name, :string
  end
end
