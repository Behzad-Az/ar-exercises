class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }

  validates :annual_revenue,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :contains_mens_or_womens_apparel

  before_destroy :check_for_employees


  private

  def contains_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(name, "needs to have either men's or women's apparel...")
    end
  end

  def check_for_employees
    puts "asdasdasdasdasdasdd #{self.employees.count}"
    if self.employees.count > 0
      errors.add(self.name, "\n \n \n Store containing employees cannot be destroyed")
      return false
    end
  end

end
