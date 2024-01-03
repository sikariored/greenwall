class AddCommentToRecord < ActiveRecord::Migration[7.1]
  def change
    add_column :secure_records, :comment, :text
  end
end
