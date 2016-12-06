class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }

  validates :annual_revenue,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :contains_mens_or_womens_apparel

  def contains_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "needs to have either men's or women's apparel...")
      errors.add(:womens_apparel, "needs to have either men's or women's apparel...")
    end
  end

end
