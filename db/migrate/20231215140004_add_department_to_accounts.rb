class AddDepartmentToAccounts < ActiveRecord::Migration[7.1]
  def change
    add_reference :accounts, :department, foreign_key: true
  end
end
