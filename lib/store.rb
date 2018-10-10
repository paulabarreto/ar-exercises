class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {presence: true, greater_than_or_equal_to: 0, only_integer: true}
  validate :validate_annual_revenue

  def validate_annual_revenue
    if !self.annual_revenue
      errors.add(:annual_revenue, "must contain annual revenue")
    end
  end

  

end
