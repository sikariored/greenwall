class AddDepartmentIdToSecureRecord < ActiveRecord::Migration[7.1]
  def change
    add_reference :secure_records, :department, null: false, foreign_key: true
  end
end
