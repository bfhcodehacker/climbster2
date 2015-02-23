require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
   test "add comment" do
     user = FactoryGirl.create(:user)
     sign_in user
     place = FactoryGirl.create(:place)

     assert_difference 'place.comments.count' do
       post :create, :place_id => place.id, :comment => {
         :message => 'Awesome',
         :rating => '5_star'
         }
       
     end
   end

   test "create comment requires logged in" do
     post :create, :place_id => 'omg'
     assert_redirected_to new_user_session_path
   end

   test "create comment needs a valid place_id" do 
     user = FactoryGirl.create(:user)
     sign_in user
     post :create, :place_id => 'omg'
     assert_response :not_found
   end

end
