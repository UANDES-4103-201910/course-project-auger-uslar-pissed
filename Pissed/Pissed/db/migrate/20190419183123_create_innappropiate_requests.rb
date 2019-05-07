class CreateInnappropiateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :innappropiate_requests do |t|
      t.date :date
      t.string :title
      t.text :justification
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
