class Post < ApplicationRecord
  # クエリのデフォルトソートを降順にする
  default_scope -> { order(created_at: :desc) }
  # 1対多
  has_many :comments

  # バリデーション 3文字以上
  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true, length: { minimum: 3 }
end
