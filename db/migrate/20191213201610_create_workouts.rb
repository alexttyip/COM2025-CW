class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title, null: false
      t.string :desc
      t.date :date, null: false
      t.integer :intensity
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
