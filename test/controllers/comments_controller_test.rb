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
end
