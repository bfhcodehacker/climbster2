require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
   test "create photo needs valid place_id" do 
     user = FactoryGirl.create(:user)
     sign_in user
     post :create, :place_id => 'omg'
     assert_response :not_found
   end

end
