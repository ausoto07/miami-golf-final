class CreateTeetimes < ActiveRecord::Migration[5.1]
  def change
    create_table :teetimes do |t|
        t.time :start_time
        t.integer :max_players
        t.references :golfcourses, foreign_key: true

      t.timestamps
    end
  end
end
