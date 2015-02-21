FactoryGirl.define do
  factory :place do
    name "My backyard"
    description "No boulders here"
    address "282 Dodds Rd, Butler, PA 16002"
  end
end

FactoryGirl.define do 
  factory :comment do 
    message "Well, it does look like a field"
    rating "one star"
  end
end

FactoryGirl.define do 
  factory :photo do 
    caption "Yep, just a flat field"
    picture "/apps/assets/images/slider1.jpg"
    img_credit "forgot the guys name"
  end
end

FactoryGirl.define do 
  factory :user do 
    email "test@test.com"
    password "this_test!"
    password_confirmation "this_test!"
  end
end
