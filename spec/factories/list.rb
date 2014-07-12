FactoryGirl.define do
  factory :list do
  	name "mylist"
  	user_id 1
  end

  factory :invalid_list, parent: :list do
  	name nil
  	user_id nil
  end
end