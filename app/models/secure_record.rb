class SecureRecord < ApplicationRecord
  belongs_to :account
  attr_encrypted :password, key: "12GNhfVSCPR9uGq26Gio36hdxGebBU0P"
end
