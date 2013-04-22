class AddAllpositionToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :allposition, :boolean
  end
end
