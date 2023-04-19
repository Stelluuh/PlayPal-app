# Create some users
user1 = User.create(name: "John", email: "john@example.com", password: "password")
user2 = User.create(name: "Joe", email: "joe@example.com", password: "password")
user3 = User.create(name: "Shawn", email: "shawn@example.com", password: "password")


# Create some activities
activity1 = Activity.create(name: "Swimming", description: "Fun in the pool", age_range: 6, duration: 60)
activity2 = Activity.create(name: "Cooking", description: "Learn to cook", age_range: 8, duration: 90)
activity3 = Activity.create(name: "Dancing", description: "Get your groove on", age_range: 10, duration: 120)

# Add activities to users
user1.activities << activity1
user1.activities << activity2
user2.activities << activity2
user3.activities << activity3

# Add user to activities
activity1.users << user1
activity2.users << user1
activity2.users << user2
activity3.users << user3

# Create some schedules
schedule1 = Schedule.create(date: Date.today, time_of_day: "Morning", user_id: user1.id, activity_id: activity1.id)
schedule2 = Schedule.create(date: Date.tomorrow, time_of_day: "Afternoon", user_id: user1.id, activity_id: activity2.id)
schedule3 = Schedule.create(date: Date.today, time_of_day: "Evening", user_id: user2.id, activity_id: activity2.id)
schedule4 = Schedule.create(date: Date.today, time_of_day: "Morning", user_id: user3.id, activity_id: activity3.id)
