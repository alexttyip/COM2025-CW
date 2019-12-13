class ChangeDescIntoText < ActiveRecord::Migration[5.2]
  def change
    change_column :workouts, :desc, :text
  end
end
