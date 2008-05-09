  def test_update_invalid
    <%= class_name %>.any_instance.stub(:valid? => false)
    put :update, :id => <%= class_name %>.first
    assert_template :edit
  end
  
  def test_update_valid
    <%= class_name %>.any_instance.stub(:valid? => true)
    put :update, :id => <%= class_name %>.first
    assert_redirected_to <%= item_path_for_test %>
  end
