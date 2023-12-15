class Role < ApplicationRecord
  has_and_belongs_to_many :accounts
  validates :role_name, presence: true
end
