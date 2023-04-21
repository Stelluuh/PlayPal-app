Activity.create(name: "Yoga", description: "A calming and meditative practice", age_range: 18, duration: 60)
Activity.create(name: "Hiking", description: "An outdoor activity that involves walking in natural environments", age_range: 16, duration: 120)
Activity.create(name: "Dancing", description: "A fun way to stay active and express yourself", age_range: 21, duration: 90)

User.create(name: "John Doe", email: "johndoe@example.com", password_digest: "password", username: "johndoe")
User.create(name: "Jane Doe", email: "janedoe@example.com", password_digest: "password", username: "janedoe")
User.create(name: "Bob Smith", email: "bobsmith@example.com", password_digest: "password", username: "bobsmith")

Schedule.create(time_of_day: "Morning", user_id: 1, activity_id: 1)
Schedule.create(time_of_day: "Afternoon", user_id: 2, activity_id: 2)
Schedule.create(time_of_day: "Evening", user_id: 3, activity_id: 3)