require 'test_helper'

class PhysicalPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_person = physical_people(:one)
  end

  test "should get index" do
    get physical_people_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_person_url
    assert_response :success
  end

  test "should create physical_person" do
    assert_difference('PhysicalPerson.count') do
      post physical_people_url, params: { physical_person: { cnpj: @physical_person.cnpj, nome_fantasia: @physical_person.nome_fantasia, person_id: @physical_person.person_id } }
    end

    assert_redirected_to physical_person_url(PhysicalPerson.last)
  end

  test "should show physical_person" do
    get physical_person_url(@physical_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_person_url(@physical_person)
    assert_response :success
  end

  test "should update physical_person" do
    patch physical_person_url(@physical_person), params: { physical_person: { cnpj: @physical_person.cnpj, nome_fantasia: @physical_person.nome_fantasia, person_id: @physical_person.person_id } }
    assert_redirected_to physical_person_url(@physical_person)
  end

  test "should destroy physical_person" do
    assert_difference('PhysicalPerson.count', -1) do
      delete physical_person_url(@physical_person)
    end

    assert_redirected_to physical_people_url
  end
end
