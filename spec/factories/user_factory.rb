FactoryGirl.define do #all factories between here
  sequence(:email) { |n| "user#{n}@test.com" }
  factory :user do
    email 
    password "123456"
    first_name "Test"
    last_name "User"
    admin false
  end

  factory :admin, class: User do
    email 
    password "654321"
    admin true
    first_name "Admin"
    last_name "User"
  end
end #and here