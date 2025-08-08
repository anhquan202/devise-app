class ProductFullCreateInformation
  include ActiveModel::Model

  attr_accessor :product_name, :price, :quantity, :unit, :category_name, :brand_name

  validates :product_name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :unit, presence: true
  validates :category_name, presence: true
  validates :brand_name, presence: true

  def save
    return false unless valid?

    ActiveRecord::Base.transaction do
      brand = Brand.find_or_create_by(brand_name: brand_name)

      category = brand.categories.find_or_create_by(category_name: category_name)

      Product.create!(
        product_name: product_name,
        price: price,
        quantity: quantity,
        unit: unit,
        category: category,
      )
    end

    true
  rescue ActiveRecord::RecordInvalid => e
    errors.add(:base, e.message)
    false
  end
end
