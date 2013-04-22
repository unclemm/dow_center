class AddLifeguardToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :lifeguard, :boolean
  end
end
