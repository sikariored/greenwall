class Department < ApplicationRecord
  has_many :accounts
  has_many :secure_records
  validates :name, presence: true
end
