taylor = User.create(name: 'Taylor Masterson', image_url: "mangobowser1.jpg", email: "taylor@taylor.com", password: "password1")
chase = User.create(name: 'Chase Nutile', image_url: "mangobill1.jpg", email: "chase@chase.com", password: "password1")
mango = User.create(name: 'Mango Nutile', image_url: "mango1.jpg", email: "mango@mango.com", password: "password1")
bill = User.create(name: 'Bill Nutile', image_url: "bill1.jpg", email: "bill@bill.com", password: "password1")

Category.create(title: "Fun")
Category.create(title: "Adventure")
Category.create(title: "Athletic")
Category.create(title: "Game")
Category.create(title: "Outdoors")
Category.create(title: "Tech")
Category.create(title: "Food")
Category.create(title: "Party")

taylor.created_events.create(title: "Bowling", description: "Lorem ipsum Tempor Excepteur ex tempor dolore veniam elit et sit sit in cillum eiusmod do Excepteur ut officia in voluptate.", address: "890 Saylor Ave Elmhurst IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 10, num_people_attending: 7, category_id: 1)
chase.created_events.create(title: "Bowling", description: "Lorem ipsum Ut dolor ea reprehenderit nisi laborum dolore pariatur sint enim tempor cupidatat non occaecat ea reprehenderit laborum in commodo.", address: "895 Swain Ave Elmhurst IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 13, num_people_attending: 4, category_id: 1)
mango.created_events.create(title: "Bowling", description: "Lorem ipsum Consectetur anim voluptate ut aliqua ut aliquip aute magna eiusmod officia in Ut commodo commodo occaecat eu amet ad sit.", address: "790 Prospect Ave Elmhurst IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 11, num_people_attending: 2, category_id: 1)

taylor.created_events.create(title: "Coffee", description: "Lorem ipsum Est dolore labore exercitation officia Ut magna sit ex sunt nisi dolore magna pariatur. Lorem ipsum Exercitation exercitation nisi dolor nisi ut enim sunt aute laboris irure adipisicing irure ullamco mollit.", address: "3563 S State St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)
mango.created_events.create(title: "Espresso", description: "Lorem ipsum Aliquip enim nulla minim esse do qui ut aliqua sunt incididunt.", address: "1763 S Western Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 2, category_id: 7)
taylor.created_events.create(title: "Coffee", description: "Lorem ipsum Do ut proident ea qui commodo in tempor adipisicing reprehenderit quis ut irure veniam in proident reprehenderit Excepteur sunt.", address: "563 S Ashland St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 3, num_people_attending: 1, category_id: 7)
chase.created_events.create(title: "Tea", description: "Lorem ipsum Est dolore sunt ea sint nulla ut mollit dolor in consectetur officia consectetur.", address: "346 N Halsted St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 2, category_id: 7)
taylor.created_events.create(title: "Coffee", description: "Lorem ipsum Id reprehenderit sunt consectetur consectetur ea aute aliquip tempor eu ullamco aliquip velit.", address: "1463 N Wood St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)

taylor.created_events.create(title: "Charity Event", description: "Lorem ipsum Laboris magna ullamco pariatur aliqua Ut in elit pariatur id anim.", address: "20 W Lake St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 100, num_people_attending: 45, category_id: 8)
mango.created_events.create(title: "Town Meeting", description: "Lorem ipsum Esse velit ullamco nulla mollit do anim adipisicing Ut laboris nostrud sed voluptate eu in dolor aliqua dolore aute laboris dolor dolore non anim mollit aliqua ex dolor ut pariatur adipisicing sit esse.", address: "120 W Lake St Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 20, num_people_attending: 15, category_id: 8)
mango.created_events.create(title: "Chess Club", description: "Lorem ipsum Sed reprehenderit culpa elit culpa proident mollit sint ut veniam in reprehenderit dolor exercitation elit tempor minim ad aliqua in.", address: "153 W Grand Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 22, num_people_attending: 11, category_id: 8)
mango.created_events.create(title: "Poetry Reading", description: "Lorem ipsum Ut Ut officia ut sint consequat ea nisi velit ex exercitation.", address: "53 W Grand Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 33, num_people_attending: 32, category_id: 8)

chase.created_events.create(title: "Sushi", description: "Lorem ipsum Reprehenderit reprehenderit occaecat tempor ad Duis ut occaecat sit proident Ut qui laborum sunt ut deserunt culpa nostrud.", address: "4033 N Ashland Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 3, num_people_attending: 1, category_id: 7)
bill.created_events.create(title: "BBQ", description: "Lorem ipsum Veniam dolor cillum deserunt Lorem ipsum Sit laboris sunt id ullamco culpa dolore nisi labore ut dolor in voluptate Excepteur nisi dolore irure nulla ea nostrud ad consectetur deserunt qui veniam voluptate in aute consectetur veniam. officia cupidatat esse nisi officia in laborum culpa velit sunt esse fugiat anim enim qui cillum pariatur aliqua deserunt sint eu esse.", address: "133 N Halsted Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 5, num_people_attending: 2, category_id: 7)
chase.created_events.create(title: "Thai Food", description: "Lorem ipsum In sint ad non nostrud in dolore officia culpa proident sint et irure nostrud laboris eiusmod sed ad aliquip eiusmod.", address: "250 S Racine Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)

chase.created_events.create(title: "Pizza", description: "Pizza is just the best!!! Lorem ipsum Consequat consequat in velit qui proident.", address: "3033 N Clark Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 2, category_id: 7)
chase.created_events.create(title: "Pizza", description: "Lorem ipsum Dolore elit nulla voluptate culpa ex nisi ad minim elit non laborum sunt est incididunt do veniam in non est sint tempor sunt id aliqua non velit.", address: "10 S Orleans Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)

chase.created_events.create(title: "Dev Bootcamp", description: "Learn HTML for beginners Lorem ipsum Enim ullamco sed commodo Duis ut reprehenderit in proident elit elit deserunt.", address: "351 W Hubbard Ave Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 8, num_people_attending: 5, category_id: 6)
mango.created_events.create(title: "Tech Meeting", description: "Lorem ipsum Est Duis do in voluptate ut exercitation culpa Excepteur consequat sint eu incididunt laboris magna cupidatat consequat sit est.", address: "251 W Hubbard Ave  Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 11, num_people_attending: 7, category_id: 6)
chase.created_events.create(title: "Hackathon", description: "Lorem ipsum Ex officia in est sunt non esse consequat dolore aliqua eu consequat.", address: "151 W Hubbard Ave  Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 13, num_people_attending: 2, category_id: 6)

chase.created_events.create(title: "Bike Riding", description: "Lorem ipsum Deserunt do officia ea aliqua laboris laboris occaecat non laborum aute eiusmod culpa Ut deserunt consectetur aliquip Duis consectetur nulla pariatur.", address: "258 W Kinzie Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 2)
mango.created_events.create(title: "Volleyball", description: "Lorem ipsum Ut est non aliquip consequat ut adipisicing dolore tempor ullamco ut mollit dolor non veniam velit eu cupidatat dolore.", address: "350 W Kinzie Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 3, num_people_attending: 2, category_id: 3)
bill.created_events.create(title: "Gardening", description: "Lorem ipsum Dolore fugiat dolore culpa minim do ex nulla magna velit in aliquip laborum amet exercitation anim cillum voluptate.", address: "273 W Kinzie Chicago IL", start_time: Faker::Time.between(DateTime.now - 1, DateTime.now), max_people: 2, num_people_attending: 1, category_id: 7)






