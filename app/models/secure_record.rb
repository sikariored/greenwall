class SecureRecord < ApplicationRecord
  belongs_to :account
  attr_encrypted :password, key: ENV['G1W2SK']
end
