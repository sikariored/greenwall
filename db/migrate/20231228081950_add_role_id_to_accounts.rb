class AddRoleIdToAccounts < ActiveRecord::Migration[7.1]
  def change
    add_reference :accounts, :role, null: false, foreign_key: true, default: 2
  end
end
