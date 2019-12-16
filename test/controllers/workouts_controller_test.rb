require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:alex)
    @workout = workouts(:running)
  end

  test "true" do
    assert_equal 4, Workout.count
  end

  test "should create workout" do
    assert_difference('Workout.count') do
      post "/u/#{@user.id}/workouts", params: {workout: {date: Date.today, desc: @workout.desc, intensity: @workout.intensity, title: @workout.title, user_id: @user.id}}
    end
  end
end