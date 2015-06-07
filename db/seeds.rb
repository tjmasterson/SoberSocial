taylor = User.create(email: "taylor@taylor.com", password: "password1")
chase = User.create(email: "chase@chase.com", password: "password1")
mango = User.create(email: "mango@mango.com", password: "password1")
bill = User.create(email: "bill@bill.com", password: "password1")

Category.create(title: "Just for fun")
Category.create(title: "Adventrue")
Category.create(title: "Atletic")
Category.create(title: "Game")
Category.create(title: "Outdoors")
Category.create(title: "Tech")
Category.create(title: "Food")
Category.create(title: "Party")

taylor.created_events.create(title: "Bowling", description: "Bowling tourney!!", address: "890 Saylor Ave Elmhurst IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 10, num_people_attending: 7, category_id: 1)
chase.created_events.create(title: "Bowling", description: "Bowling tourney!!", address: "895 Swain Ave Elmhurst IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 13, num_people_attending: 4, category_id: 1)
mango.created_events.create(title: "Bowling", description: "Bowling tourney!!", address: "790 Prospect Ave Elmhurst IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 11, num_people_attending: 2, category_id: 1)

taylor.created_events.create(title: "Coffee", description: "Lets get coffee!!", address: "3563 S State St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)
mango.created_events.create(title: "Espresso", description: "Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "1763 S Western Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 2, category_id: 7)
taylor.created_events.create(title: "Kombucha", description: "mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "363 S State St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 5, num_people_attending: 1, category_id: 7)
taylor.created_events.create(title: "Coffee", description: "Lets get coffee!!", address: "563 S Ashland St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 3, num_people_attending: 1, category_id: 7)
chase.created_events.create(title: "Tea", description: "Lets get Tea!!", address: "346 N Halsted St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 2, category_id: 7)
taylor.created_events.create(title: "Coffee", description: "Lets get coffee!!", address: "1463 N Wood St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)

taylor.created_events.create(title: "Charity Event", description: "Blah is hosting a charity event", address: "20 W Lake St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 100, num_people_attending: 45, category_id: 8)
mango.created_events.create(title: "Town Meeting", description: "mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "120 W Lake St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 20, num_people_attending: 15, category_id: 8)
mango.created_events.create(title: "Chess Club", description: "Players of all skill levels welcome!", address: "153 W Grand Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 22, num_people_attending: 11, category_id: 8)
mango.created_events.create(title: "Poetry Reading", description: "Poetry is pretty.", address: "53 W Grand Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 33, num_people_attending: 32, category_id: 8)

chase.created_events.create(title: "Sushi", description: "Sushi is just the best", address: "4033 N Ashland Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 3, num_people_attending: 1, category_id: 7)
bill.created_events.create(title: "BBQ", description: "BBQ is just the best mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "133 N Halsted Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 5, num_people_attending: 2, category_id: 7)
chase.created_events.create(title: "Thai Food", description: "Thai is just the best", address: "250 S Racine Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)

chase.created_events.create(title: "Pizza", description: "Pizza is just the best", address: "3033 N Clark Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 2, category_id: 7)
chase.created_events.create(title: "Pizza", description: "mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "10 S Orleans Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)

chase.created_events.create(title: "Dev Bootcamp", description: "Learn HTML for beginners", address: "351 W Hubbard Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 8, num_people_attending: 5, category_id: 6)
mango.created_events.create(title: "Tech Meeting", description: "mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "251 W Hubbard Ave  Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 11, num_people_attending: 7, category_id: 6)
chase.created_events.create(title: "Hackathon", description: "48 hour hackathon at the Adler Planetarium!  Yay!", address: "151 W Hubbard Ave  Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 13, num_people_attending: 2, category_id: 6)

chase.created_events.create(title: "Bike Riding", description: "mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "258 W Kinzie Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 2)
mango.created_events.create(title: "Volleyball", description: "mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "350 W Kinzie Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 3, num_people_attending: 2, category_id: 3)
bill.created_events.create(title: "Gardening", description: "mango bett bill chase Lemon Drops cinnamon coconut Cupcakes.ELASLDKSJADLAKSD. Lets get coffee!! Long description.  Blah blah blhah.  Describe ladadadadadad stuff.", address: "273 W Kinzie Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)

