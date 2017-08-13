class ChangeColumnToPosts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :fav, :integer, default: 0
  end
end
