class StudentDetail < ApplicationRecord
  validates :student_name, presence: true
  validates :student_age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :grade, presence: true

  belongs_to :student
end
