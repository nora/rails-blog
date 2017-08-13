class AddFavToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :fav, :integer
  end
end
