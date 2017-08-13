class Post < ApplicationRecord
  has_many :comments

  # バリデーション
  validates :title, presence: true, length: { minimum: 5 }
end
