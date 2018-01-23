class CreateGolfcourses < ActiveRecord::Migration[5.1]
  def change
    create_table :golfcourses do |t|
          t.string :name
          t.string :location
          t.string :holes
          t.text :description
          t.float :longitude
          t.float :latitude
      t.timestamps
    end
  end
end
