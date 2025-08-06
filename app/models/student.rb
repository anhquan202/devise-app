class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable

  has_one :student_detail, dependent: :destroy

  accepts_nested_attributes_for :student_detail, allow_destroy: true
end
