class AddUserIdToDealzon < ActiveRecord::Migration
  def change
    add_column :dealzons, :user_id, :integer
  end
end
