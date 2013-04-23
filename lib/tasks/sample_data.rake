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


	       User.create!(name: "Regular Worker",
	       			  email: "regular@hsianglin.org",
				  password: "foobar",
				  password_confirmation: "foobar",
				  regular: true)
		 
		 User.create!(name: "Lifeguard",
		             email: "lifeguard@hsianglin.org",
			     position: 1,

			     password: "foobar",
			     password_confirmation: "foobar", lifeguard: lg)
	
		User.create!(name: "Supervisor",
				   email: "supervisor@hsianglin.org",
				   password: "foobar",
				   password_confirmation: "foobar", supervisor:true)

		end
		end