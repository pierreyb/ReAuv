require 'test_helper'

class BanqueCarrefourEntreprisesControllerTest < ActionController::TestCase
  setup do
    @banque_carrefour_entreprise = banque_carrefour_entreprises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:banque_carrefour_entreprises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banque_carrefour_entreprise" do
    assert_difference('BanqueCarrefourEntreprise.count') do
      post :create, banque_carrefour_entreprise: { entreprise_number: @banque_carrefour_entreprise.entreprise_number, juridical_form: @banque_carrefour_entreprise.juridical_form, juridical_situation: @banque_carrefour_entreprise.juridical_situation, start_date: @banque_carrefour_entreprise.start_date, status: @banque_carrefour_entreprise.status, type_of_entreprise: @banque_carrefour_entreprise.type_of_entreprise }
    end

    assert_redirected_to banque_carrefour_entreprise_path(assigns(:banque_carrefour_entreprise))
  end

  test "should show banque_carrefour_entreprise" do
    get :show, id: @banque_carrefour_entreprise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banque_carrefour_entreprise
    assert_response :success
  end

  test "should update banque_carrefour_entreprise" do
    put :update, id: @banque_carrefour_entreprise, banque_carrefour_entreprise: { entreprise_number: @banque_carrefour_entreprise.entreprise_number, juridical_form: @banque_carrefour_entreprise.juridical_form, juridical_situation: @banque_carrefour_entreprise.juridical_situation, start_date: @banque_carrefour_entreprise.start_date, status: @banque_carrefour_entreprise.status, type_of_entreprise: @banque_carrefour_entreprise.type_of_entreprise }
    assert_redirected_to banque_carrefour_entreprise_path(assigns(:banque_carrefour_entreprise))
  end

  test "should destroy banque_carrefour_entreprise" do
    assert_difference('BanqueCarrefourEntreprise.count', -1) do
      delete :destroy, id: @banque_carrefour_entreprise
    end

    assert_redirected_to banque_carrefour_entreprises_path
  end
end
