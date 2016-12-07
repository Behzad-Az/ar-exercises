class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :hourly_rate, :store, presence: true

  validates :hourly_rate,
    numericality: { only_integer: true },
    inclusion: 40..200

  before_create :setPassword

  private

  def setPassword
    pw = Array.new(8){[*"A".."Z", *"0".."9"].sample}.join
    self.password = pw
    puts "Password for employee #{self.first_name} #{self.last_name} is #{pw}."
  end

end
