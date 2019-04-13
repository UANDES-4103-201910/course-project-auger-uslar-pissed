class RemoveRecentActivityFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :recent_activity, :string
  end
end
