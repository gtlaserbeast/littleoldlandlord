#Little old LandLady app
## LOL APP / Rental Rodeo
![LandLady](http://fellowshipofminds.files.wordpress.com/2010/12/old-woman.jpg =200x)
###Concept
	Application intended to assist property owners in the management of their rental units. Features designed to facilitate communcation/payment via web/text. Consolidation of repetitive tasks i.e. lease agreement/repair requests 
##Rentals
1. geolocation map
**3hrs**
2. upforrent/rented
**4hrs**
3. repairs needed
**4hrs**
4. repairs completed
**3hrs**
5. preferred repairmen *stretch-goal*    	
6. current_occupants
**2hr**
7. paid/late/pending
**4hrs**
8. urgent texting - twillio *stretch-goal* [twilio blog](https://www.twilio.com/blog/2014/02/twilio-on-rails-integrating-twilio-with-your-rails-4-app.html "a guide for twilio and rails 4")
**3hrs?**
9. stripe for payment *stretch-goal* [Stripe Github](https://github.com/stripe/stripe-ruby)
**3hrs?**
10. workflow for pay, repairs, vacancy AJAX
**8hrs**
	1. pay
		pending, paid_on_time, late, paid-late
	2. repairs
		in need of repair, repaired
	3. vacancy
		vacant, up-for-rent, rented

##Renters
1. submit work requests
**4hrs**
2. contact landlord
**3hrs**
3. online pay *stretch-goal* [Stripe Github](https://github.com/stripe/stripe-ruby)
4. urgent text messaging *stretch-goal* [twilio blog](https://www.twilio.com/blog/2014/02/twilio-on-rails-integrating-twilio-with-your-rails-4-app.html "a guide for twilio and rails 4")

###Tables/Schema
**4hrs**

[Devise GitHub](https://github.com/plataformatec/devise) - Admin attr rather than table


1. owner 
	- name
	- email
	- mailing_address
  	- phone
2. rental belongs_to owner
	- payment_state
	- address
	- lat/long geocode
	- description
	- tenants
	- repairs
3. tenant belongs_to rental
  	- name
  	- email
  	- phone
  	- workphone/workaddress *not required but on form
4. repair belongs_to rental
	- category (plumbing/carpentry/yard)
	- description
	- workflow-> in_need_of_repair/	schedule_for_repair/repaired
		- list of repairmen based on category?
5. categories for a work request
	- plumbing, blah
	- list of repair people
6. correspondance of some sort
	- texting the landlord for emergency requests
	- comments on work orders to keep track of progress

#**45 x 2(newbie coefficient)= 90ish total hours**
#I would love some suggestions for nifty names

####9/29/2014 Self Stand-Up
1. Things I did yesterday:
	- Created rentals / repairs
	- Implemented devise for users
	- included bootstrap
	-
2. Things to do today:
	- add admin to devise
	- add other attributes to devise user by including ctrlr
	- decide on a bootstrap template (stanley is looking promising)
	-consider other styling options (foundation, etc.)
3. Roadblocks:
	- Heartburn like a mofo
####9/30/2014 Self Stand-Up
1. Things I did yesterday: modified devise, added repairs
2. Things to do tomorrow: make improved forms, work on UX
3. Roadblocks:
	- buffer css for application.html.haml
####10/1/2014
1. Things I did yesterday: modified views
2. Things to do tomorrow: flesh out functionality
3. Roadblocks:
	- need better ideas. why do my ideas suck?
####10/2/2014
1. Things I did yesterday: struggled with organizational concepts regarding relationship between user/rental
2. Things to do tomorrow: Implement comments, make users have a relationship with 1(standarduser) or many(admin) rentals
3. Roadblocks:
	- previous mental pictures of goals were flawed
####10/3/2014
1. Things I did yesterday: tom wilson talk, installed ubuntu on the chromebook, looked at nodeschool
2. Things to do tomorrow: decide upon template styling
3. Roadblocks:
	- too many options
#####10/4/2014
1. Things done today: tweaked styling, added landlord_id to rentals
2. fix address block in footer, workflow for rent/repairs, comments, mailer/texter
3. Roadblocks: IF NOT ADMIN THEN CHOOSE RENTAL upon registration	
####10/5/2014
1. Things done today: forced users to be a landlord or pick a home via js+checkbox, modified header and footer, reorganized rental show, sketched repair workflow
2. things to do further on tonight->tomorrow: implement workflow state for repairs, implement mailer/texter
3. realizing limitations of only using an admin attribute for devise user. 
