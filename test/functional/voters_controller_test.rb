require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Voters.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Voters.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Voters.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to voters_url(assigns(:voters))
  end
  
  def test_edit
    get :edit, :id => Voters.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Voters.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Voters.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Voters.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Voters.first
    assert_redirected_to voters_url(assigns(:voters))
  end
  
  def test_destroy
    voters = Voters.first
    delete :destroy, :id => voters
    assert_redirected_to voters_url
    assert !Voters.exists?(voters.id)
  end
end
