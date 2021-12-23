class AddFanNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fan_name, :string
  end
end
