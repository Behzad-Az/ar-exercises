class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :hourly_rate, :store, presence: true

  validates :hourly_rate,
    numericality: { only_integer: true },
    inclusion: 40..200

end
