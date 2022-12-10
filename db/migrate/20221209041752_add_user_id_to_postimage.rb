class AddUserIdToPostimage < ActiveRecord::Migration[6.1]
  def change
    add_column :postimages, :user_id, :integer
  end
end
