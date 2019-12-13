class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :desc
      t.date :date
      t.integer :intensity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
