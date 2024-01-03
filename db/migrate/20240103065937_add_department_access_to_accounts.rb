class AddDepartmentAccessToAccounts < ActiveRecord::Migration[7.1]
  def change
    add_column :accounts, :department_access, :integer, array: true, default: []
  end
end
