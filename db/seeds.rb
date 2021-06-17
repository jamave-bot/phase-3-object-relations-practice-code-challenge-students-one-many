puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-c1",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-c2",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-c3",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-c4",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-c5",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
jose = Student.create(
  name: "Jose",
  age: rand(1..40),
  cohort_id: c1.id
)
cosmo = Student.create(
  name: "Cosmo",
  age: rand(1..40),
  cohort_id: c2.id
)
wanda = Student.create(
  name: "Wanda",
  age: rand(1..40),
  cohort_id: c2.id
)
timmy = Student.create(
  name: "Timmy",
  age: rand(1..40),
  cohort_id: c2.id
)
jimmy = Student.create(
  name: "Jimmy",
  age: rand(1..40),
  cohort_id: c3.id
)

puts "Done!"


#copy and paste
# cohort1 = Cohort.first
# cohort2 = Cohort.second
# jose = Student.find_by(name: "Jose")
# cosmo = Student.find_by(name: "Cosmo")