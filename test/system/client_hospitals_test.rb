require "application_system_test_case"

class ClientHospitalsTest < ApplicationSystemTestCase
  setup do
    @client_hospital = client_hospitals(:one)
  end

  test "visiting the index" do
    visit client_hospitals_url
    assert_selector "h1", text: "Client hospitals"
  end

  test "should create client hospital" do
    visit client_hospitals_url
    click_on "New client hospital"

    fill_in "Doctor", with: @client_hospital.doctor_id
    fill_in "Patient", with: @client_hospital.patient_id
    click_on "Create Client hospital"

    assert_text "Client hospital was successfully created"
    click_on "Back"
  end

  test "should update Client hospital" do
    visit client_hospital_url(@client_hospital)
    click_on "Edit this client hospital", match: :first

    fill_in "Doctor", with: @client_hospital.doctor_id
    fill_in "Patient", with: @client_hospital.patient_id
    click_on "Update Client hospital"

    assert_text "Client hospital was successfully updated"
    click_on "Back"
  end

  test "should destroy Client hospital" do
    visit client_hospital_url(@client_hospital)
    click_on "Destroy this client hospital", match: :first

    assert_text "Client hospital was successfully destroyed"
  end
end
