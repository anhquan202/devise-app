class Brand < ApplicationRecord
  validates :brand_name, presence: true

  has_many :categories, dependent: :destroy
end
