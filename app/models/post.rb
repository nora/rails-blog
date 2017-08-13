class Post < ApplicationRecord
  has_many :comments

  # バリデーション 3文字以上
  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true, length: { minimum: 3 }
end
