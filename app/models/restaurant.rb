class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  VALID_CATEGORIES = ["italian", "chinese", "japanese", "belgian", "french"]
  validates :name, :address, presence: true
  validates :category, inclusion: { in: VALID_CATEGORIES, message: "is not a valid category" }
end
