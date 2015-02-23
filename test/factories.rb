FactoryGirl.define do
  factory :place do
    name "My backyard"
    description "No boulders here"
    address "282 Dodds Rd, Butler, PA 16002"
    association :user
  end
end

FactoryGirl.define do 
  factory :comment do 
    message "Well, it does look like a field"
    rating "one star"
    association :user
    association :place
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
    sequence :email do |n|
      "test#{n}@test.com"
    end
    password "this_test!"
    password_confirmation "this_test!"
  end
end
