class AddLifeguardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lifeguard, :boolean
  end
end
