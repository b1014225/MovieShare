class AddUserIdToTexts < ActiveRecord::Migration[5.0]
  def change
    add_column :texts, :user_id, :integer
  end
end
