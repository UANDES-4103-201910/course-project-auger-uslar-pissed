class RemoveEmailAddressFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email_address, :string
  end
end
