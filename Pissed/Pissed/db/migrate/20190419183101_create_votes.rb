class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :down_or_up_vote
      t.date :date
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
