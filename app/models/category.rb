class Category < ApplicationRecord
  validates :category_name, presence: true

  belongs_to :brand

  has_many :products, dependent: :destroy

  accepts_nested_attributes_for :products, allow_destroy: true
end
