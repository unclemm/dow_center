class AddSupervisorToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :supervisor, :boolean
  end
end
