class SecureRecord < ApplicationRecord
  belongs_to :account
  belongs_to :department
  attr_encrypted :password, key: ENV['G1W2SK']
end
