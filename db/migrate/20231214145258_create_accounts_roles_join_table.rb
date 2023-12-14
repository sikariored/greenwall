class CreateAccountsRolesJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :accounts, :roles do |t|
      t.belongs_to :account
      t.belongs_to :role
    end
  end
end
