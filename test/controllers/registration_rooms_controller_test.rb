require 'test_helper'

class RegistrationRoomsControllerTest < ActionController::TestCase
  setup do
    @registration_room = registration_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration_room" do
    assert_difference('RegistrationRoom.count') do
      post :create, registration_room: { courses_id: @registration_room.courses_id, semester: @registration_room.semester, students_id: @registration_room.students_id }
    end

    assert_redirected_to registration_room_path(assigns(:registration_room))
  end

  test "should show registration_room" do
    get :show, id: @registration_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration_room
    assert_response :success
  end

  test "should update registration_room" do
    patch :update, id: @registration_room, registration_room: { courses_id: @registration_room.courses_id, semester: @registration_room.semester, students_id: @registration_room.students_id }
    assert_redirected_to registration_room_path(assigns(:registration_room))
  end

  test "should destroy registration_room" do
    assert_difference('RegistrationRoom.count', -1) do
      delete :destroy, id: @registration_room
    end

    assert_redirected_to registration_rooms_path
  end
end
