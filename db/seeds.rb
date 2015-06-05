taylor = User.create(email: "taylor@taylor.com", password: "password1")
chase = User.create(email: "chase@chase.com", password: "password1")

Category.create(title: "Just for fun")
Category.create(title: "Adventrue")
Category.create(title: "Atletic")
Category.create(title: "Game")
Category.create(title: "Outdoors")
Category.create(title: "Tech")
Category.create(title: "Food")
Category.create(title: "Party")

taylor.created_events.create(title: "Bowling", description: "Bowling tourney!!", address: "890 Saylor Ave Elmhurst IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 10, num_peopel_attending: 7, category_id: 1)

taylor.created_events.create(title: "Coffee", description: "Lets get coffee!!", address: "3463 N Clark St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 1, num_peopel_attending: 0, category_id: 7)

taylor.created_events.create(title: "Charity Event", description: "Blah is hosting a charity event", address: "953 W Belmont Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 100, num_peopel_attending: 45, category_id: 8)

chase.created_events.create(title: "Pizza", description: "Pizza is just the best", address: "3033 N Ashland Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_peopel_attending: 1, category_id: 7)

chase.created_events.create(title: "Dev Bootcamp", description: "Learn HTML for beginners", address: "2207 N Clybourn Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 8, num_peopel_attending: 5, category_id: 6)

chase.created_events.create(title: "Bike Riding", description: "Let's go for a ride on lakeshore", address: "958 W Wrightwood Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 1, num_peopel_attending: 1, category_id: 3)
