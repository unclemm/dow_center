namespace :db do
	  desc "Fill database with sample data"
	  task populate: :environment do
	       admin = User.create!(name: "Example User",
	       	       	            email: "hsiang@hsianglin.org",
				    password: "foobar",
				    password_confirmation: "foobar")
		admin.toggle!(:admin)

	       User.create!(name: "Example User",
	       			  email: "example@railstutorial.org",
				  password: "foobar",
				  password_confirmation: "foobar")
		5.times do |n|
		name = Faker::Name.name
		email = "example-#{n+10}@railstutorial.org"
		password = "password"
		User.create!(name: name,
		             email: email,
			     position: 1,
			     password: password,
			     password_confirmation: password)
		end
		end
		end