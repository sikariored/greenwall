class CreateAccountsRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts_roles, id: false do |t|
      t.belongs_to :account
      t.belongs_to :role
      t.timestamps
    end

    add_index :accounts_roles, [:account_id, :role_id], unique: true
  end
end
