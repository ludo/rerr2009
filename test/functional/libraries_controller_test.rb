require 'test_helper'

class LibrariesControllerTest < ActionController::TestCase
  
  test 'create' do
    Library.any_instance.expects(:save).returns(true)
    @library = libraries(:basic)
    post :create, :library => @library.attributes
    assert_response :redirect
  end
  
  test 'create with failure' do
    Library.any_instance.expects(:save).returns(false)
    @library = libraries(:basic)
    post :create, :library => @library.attributes
    assert_template 'new'
  end
  
  test 'update' do
    Library.any_instance.expects(:save).returns(true)
    @library = libraries(:basic)
    put :update, :id => libraries(:basic).to_param, :library => @library.attributes
    assert_response :redirect
  end
  
  test 'update with failure' do
    Library.any_instance.expects(:save).returns(false)
    @library = libraries(:basic)
    put :update, :id => libraries(:basic).to_param, :library => @library.attributes
    assert_template 'edit'
  end
  
  test 'destroy' do
    Library.any_instance.expects(:destroy).returns(true)
    @library = libraries(:basic)
    delete :destroy, :id => @library.to_param
    assert_not_nil flash[:notice] 
    assert_response :redirect
  end
  
  # Not possible: destroy with failure
  
  test 'new' do
    get :new
    assert_response :success
  end
  
  test 'edit' do
    @library = libraries(:basic)
    get :edit, :id => @library.to_param
    assert_response :success
  end
  
  test 'show' do
    @library = libraries(:basic)
    get :show, :id => @library.to_param
    assert_response :success
  end
  
  test 'index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:libraries)
  end
  
end