class AddRegularToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :regular, :boolean
  end
end
