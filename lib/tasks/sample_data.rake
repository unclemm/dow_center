namespace :db do
	  desc "Fill database with sample data"
	  task populate: :environment do
	       reg = true;
	       superv = true;
	       lg = true;
	       admin = User.create!(name: "Example User",
	       	       	            email: "hsiang@hsianglin.org",
				    password: "foobar",
				    password_confirmation: "foobar", regular: reg, supervisor: superv, lifeguard: lg)
		admin.toggle!(:admin)
		admin.microposts.create!(content: "Testing from admin")


	       User.create!(name: "Example User",
	       			  email: "example@railstutorial.org",
				  password: "foobar",
				  password_confirmation: "foobar")
		 
		 User.create!(name: "TestWorker",
		             email: "test@test.org",
			     position: 1,
			     password: "password",
			     password_confirmation: "password", regular: reg, supervisor: superv, lifeguard: lg)
	
		end
		end