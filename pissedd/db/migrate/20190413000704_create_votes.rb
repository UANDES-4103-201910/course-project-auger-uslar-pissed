class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :up_vote
      t.date :date

      t.timestamps
    end
  end
end
