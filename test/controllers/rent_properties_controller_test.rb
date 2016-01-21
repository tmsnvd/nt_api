require 'test_helper'

class RentPropertiesControllerTest < ActionController::TestCase
  setup do
    @rent_property = rent_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rent_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent_property" do
    assert_difference('RentProperty.count') do
      post :create, rent_property: { apartment_number: @rent_property.apartment_number, building_year: @rent_property.building_year, city_id: @rent_property.city_id, house_number: @rent_property.house_number, status_id: @rent_property.status_id, street_id: @rent_property.street_id, user_id: @rent_property.user_id }
    end

    assert_redirected_to rent_property_path(assigns(:rent_property))
  end

  test "should show rent_property" do
    get :show, id: @rent_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rent_property
    assert_response :success
  end

  test "should update rent_property" do
    patch :update, id: @rent_property, rent_property: { apartment_number: @rent_property.apartment_number, building_year: @rent_property.building_year, city_id: @rent_property.city_id, house_number: @rent_property.house_number, status_id: @rent_property.status_id, street_id: @rent_property.street_id, user_id: @rent_property.user_id }
    assert_redirected_to rent_property_path(assigns(:rent_property))
  end

  test "should destroy rent_property" do
    assert_difference('RentProperty.count', -1) do
      delete :destroy, id: @rent_property
    end

    assert_redirected_to rent_properties_path
  end
end
