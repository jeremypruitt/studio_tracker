require 'test_helper'

class TracksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Track.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Track.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Track.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to track_url(assigns(:track))
  end
  
  def test_edit
    get :edit, :id => Track.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Track.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Track.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Track.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Track.first
    assert_redirected_to track_url(assigns(:track))
  end
  
  def test_destroy
    track = Track.first
    delete :destroy, :id => track
    assert_redirected_to tracks_url
    assert !Track.exists?(track.id)
  end
end
