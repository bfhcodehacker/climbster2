require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  test "index" do 
    FactoryGirl.create(:place)
    get :index
    assert_response :success
  end

  test "show found" do
    place = FactoryGirl.create(:place)
    get :show, :id => place.id
    assert_response :success
  end

  test "show not found" do
    place = FactoryGirl.create(:place)
    get :show, :id => 'OMG'
    assert_response :not_found
  end



  test "new" do
    user = FactoryGirl.create(:user)
    sign_in user
    get :new
    assert_response :success
  end

  test "create not signed in" do 
    assert_no_difference 'Place.count' do
      post :create, {:place => {
        :name => 'here', 
        :description => 'there', 
        :address => '282 Dodds Rd, Butler, PA 16002'
      }
    }
    end
    assert_redirected_to new_user_session_path
  end

  test "create" do
    user = FactoryGirl.create(:user)
    sign_in user
 
    assert_difference 'Place.count' do 
      post :create, {:place => {
        :name => 'here', 
        :description => 'there', 
        :address => '282 Dodds Rd, Butler, PA 16002'
        }
      }
    end
    assert_redirected_to places_path
    assert_equal 1, user.places.count
  end

#  test "invalid create" do 
#    user = FactoryGirl.create(:user)
#    sign_in user

#    assert_no_difference 'Place.count' do
#      post :create, {:place => {
#        :name => '',
#        :description => ' ',
#        :address => ''
#        }
#      }
#    end
#    assert_response :unprocessable_entity
#  end

end
