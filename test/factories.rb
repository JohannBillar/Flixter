FactoryGirl.define do

	factory :user do
		sequence :email do |n|
			"jwbillar@{n}.gmail.com"
		end
		password "Rallib1975"
	end

	FactoryGirl.define do
  	factory :course do
    	title "Factory girl course"
    	description "Try the course"
    	cost "100"
    	association :user
  	end
	end

end