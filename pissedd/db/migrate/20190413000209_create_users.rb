class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :email_address
      t.string :password
      t.string :picture
      t.text :bio
      t.integer :gps_location
      t.string :city
      t.string :country
      t.string :recent_activity
      t.string :string
      t.boolean :in_blacklist
      t.boolean :suspended
      t.integer :previously_suspension
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
