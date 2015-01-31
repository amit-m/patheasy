require 'test_helper'

class MedicalTestsControllerTest < ActionController::TestCase
  setup do
    @medical_test = medical_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_test" do
    assert_difference('MedicalTest.count') do
      post :create, medical_test: { clinical_restrictn: @medical_test.clinical_restrictn, cost_of_text: @medical_test.cost_of_text, duration_of_rpt: @medical_test.duration_of_rpt, name: @medical_test.name, specimen_required: @medical_test.specimen_required }
    end

    assert_redirected_to medical_test_path(assigns(:medical_test))
  end

  test "should show medical_test" do
    get :show, id: @medical_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_test
    assert_response :success
  end

  test "should update medical_test" do
    put :update, id: @medical_test, medical_test: { clinical_restrictn: @medical_test.clinical_restrictn, cost_of_text: @medical_test.cost_of_text, duration_of_rpt: @medical_test.duration_of_rpt, name: @medical_test.name, specimen_required: @medical_test.specimen_required }
    assert_redirected_to medical_test_path(assigns(:medical_test))
  end

  test "should destroy medical_test" do
    assert_difference('MedicalTest.count', -1) do
      delete :destroy, id: @medical_test
    end

    assert_redirected_to medical_tests_path
  end
end
