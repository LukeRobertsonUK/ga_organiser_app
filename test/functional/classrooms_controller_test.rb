require 'test_helper'

class ClassroomsControllerTest < ActionController::TestCase
  setup do
    @classroom = classrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classroom" do
    assert_difference('Classroom.count') do
      post :create, classroom: { classroom_image: @classroom.classroom_image, name: @classroom.name, seating_capacity: @classroom.seating_capacity }
    end

    assert_redirected_to classroom_path(assigns(:classroom))
  end

  test "should show classroom" do
    get :show, id: @classroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classroom
    assert_response :success
  end

  test "should update classroom" do
    put :update, id: @classroom, classroom: { classroom_image: @classroom.classroom_image, name: @classroom.name, seating_capacity: @classroom.seating_capacity }
    assert_redirected_to classroom_path(assigns(:classroom))
  end

  test "should destroy classroom" do
    assert_difference('Classroom.count', -1) do
      delete :destroy, id: @classroom
    end

    assert_redirected_to classrooms_path
  end
end
