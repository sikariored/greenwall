class CreateSecureRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :secure_records do |t|
      t.string :login
      t.string :resource
      t.string :encrypted_password

      t.belongs_to :account, index: true, foreign_key: true

      t.timestamps
    end
  end
end
