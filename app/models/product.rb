class Product < ApplicationRecord
  validates :product_name, presence: true

  belongs_to :category
end
