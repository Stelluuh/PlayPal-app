# # Create some users
# user1 = User.create(name: "John", username: "John1", email: "john@example.com", password: "password", password_confirmation: "password")
# user2 = User.create(name: "Joe", username: "Joe1", email: "joe@example.com", password: "password", password_confirmation: "password")
# user3 = User.create(name: "Shawn", username: "Shawn1", email: "shawn@example.com", password: "password", password_confirmation: "password")


# # Create some activities
# activity1 = Activity.create(name: "Swimming", description: "Fun in the pool", age_range: 6, duration: 60)
# activity2 = Activity.create(name: "Cooking", description: "Learn to cook", age_range: 8, duration: 90)
# activity3 = Activity.create(name: "Dancing", description: "Get your groove on", age_range: 10, duration: 120)

# # Add activities to users
# user1.activities << activity1
# user1.activities << activity2
# user2.activities << activity2
# user3.activities << activity3

# # Add user to activities
# activity1.users << user1
# activity2.users << user1
# activity2.users << user2
# activity3.users << user3

# # Create some schedules
# schedule1 = Schedule.create(date: Date.today, time_of_day: "Morning", user_id: user1.id, activity_id: activity1.id)
# schedule2 = Schedule.create(date: Date.tomorrow, time_of_day: "Afternoon", user_id: user1.id, activity_id: activity2.id)
# schedule3 = Schedule.create(date: Date.today, time_of_day: "Evening", user_id: user2.id, activity_id: activity2.id)
# schedule4 = Schedule.create(date: Date.today, time_of_day: "Morning", user_id: user3.id, activity_id: activity3.id)

# create some activities
Activity.create(name: "Yoga", description: "A calming and meditative practice", age_range: 18, duration: 60)
Activity.create(name: "Hiking", description: "An outdoor activity that involves walking in natural environments", age_range: 16, duration: 120)
Activity.create(name: "Dancing", description: "A fun way to stay active and express yourself", age_range: 21, duration: 90)

# create some users
User.create(name: "John Doe", email: "johndoe@example.com", password_digest: "password", username: "johndoe")
User.create(name: "Jane Doe", email: "janedoe@example.com", password_digest: "password", username: "janedoe")
User.create(name: "Bob Smith", email: "bobsmith@example.com", password_digest: "password", username: "bobsmith")

# create some schedules
Schedule.create(date: Date.today, time_of_day: "Morning", user_id: 1, activity_id: 1)
Schedule.create(date: Date.today + 1, time_of_day: "Afternoon", user_id: 2, activity_id: 2)
Schedule.create(date: Date.today + 2, time_of_day: "Evening", user_id: 3, activity_id: 3)