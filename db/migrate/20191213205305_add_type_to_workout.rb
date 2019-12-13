class AddTypeToWorkout < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :workout_type, :integer, null: false, default: 0
  end
end
