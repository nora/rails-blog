class ChangeFavPosToPosts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :fav, :integer, after: :text
  end
end
