class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :site
      t.text :description
      t.date :date
      t.string :city
      t.string :country
      t.integer :gps_location
      t.string :image
      t.string :file_atachment
      t.boolean :open
      t.boolean :solved
      t.integer :innapropiated_count
      t.boolean :in_dumpster
      t.boolean :is_hidden

      t.timestamps
    end
  end
end
