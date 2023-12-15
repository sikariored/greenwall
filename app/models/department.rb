class Department < ApplicationRecord
  has_many :accounts
  validates :department_name, presence: true
end
