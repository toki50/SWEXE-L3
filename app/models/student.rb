class Student < ApplicationRecord
  validates :name, :maile, :number, presence: true
  validates :number, length: { maximum: 10 }
end
