class Post < ApplicationRecord
  # バリデーション
  validates :title, presence: true, length: { minimum: 5 }
end
