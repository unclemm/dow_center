class AddRegularToUsers < ActiveRecord::Migration
  def change
    add_column :users, :regular, :boolean
  end
end
