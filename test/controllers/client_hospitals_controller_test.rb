require "test_helper"

class ClientHospitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_hospital = client_hospitals(:one)
  end

  test "should get index" do
    get client_hospitals_url
    assert_response :success
  end

  test "should get new" do
    get new_client_hospital_url
    assert_response :success
  end

  test "should create client_hospital" do
    assert_difference("ClientHospital.count") do
      post client_hospitals_url, params: { client_hospital: { doctor_id: @client_hospital.doctor_id, patient_id: @client_hospital.patient_id } }
    end

    assert_redirected_to client_hospital_url(ClientHospital.last)
  end

  test "should show client_hospital" do
    get client_hospital_url(@client_hospital)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_hospital_url(@client_hospital)
    assert_response :success
  end

  test "should update client_hospital" do
    patch client_hospital_url(@client_hospital), params: { client_hospital: { doctor_id: @client_hospital.doctor_id, patient_id: @client_hospital.patient_id } }
    assert_redirected_to client_hospital_url(@client_hospital)
  end

  test "should destroy client_hospital" do
    assert_difference("ClientHospital.count", -1) do
      delete client_hospital_url(@client_hospital)
    end

    assert_redirected_to client_hospitals_url
  end
end
