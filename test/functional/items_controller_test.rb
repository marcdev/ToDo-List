require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  context "get index" do
    setup do
      get :index
    end

    should_respond_with :success
  end

  context "get new" do
    setup do
      get :new
    end

    should_respond_with :success
  end

  context "get new" do
    setup do
      get :new
    end

    should_respond_with :success
  end


  should "create item" do
    assert_difference('Item.count') do
      post :create, :item => {:title => "Something", :type => Item.allowed_types.first }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  should "show item" do
    get :show, :id => items(:one).to_param
    assert_response :success
  end

  should "get edit" do
    get :edit, :id => items(:one).to_param
    assert_response :success
  end

  should "update item" do
    put :update, :id => items(:one).to_param, :item => {:title => "Else!!", :type => Item.allowed_types.last }
    assert_redirected_to item_path(assigns(:item))
  end

  should "destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, :id => items(:one).to_param
    end

    assert_redirected_to items_path
  end
end
