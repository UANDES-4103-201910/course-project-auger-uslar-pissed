class CreateAdminZones < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_zones do |t|
      t.references :user, foreign_key: true
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
