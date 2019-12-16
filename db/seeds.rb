# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
email = "ty00208@surrey.ac.uk"
username = "ty00208"
user.email = email
user.username = username
user.first_name = "Alex"
user.last_name = "Yip"
user.sex = User.sexes[:male]
user.dob = Date.new(2000, 1, 1)
user.password = "Password"
user.password_confirmation = "Password"
user.profile_pic.attach(io: File.open('app/assets/images/profile-pic.png'), filename: 'file.pdf', content_type: 'image/png')
if User.where(email: email).or(User.where(username: username)).exists?
  User.where(email: email).or(User.where(username: username)).destroy_all
end
user.save!

user_id = User.where(email: email).take.id

workout = Workout.new
workout.title = "Awesome Run"
workout.desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla interdum consequat leo, sollicitudin fermentum sem blandit ac. Aliquam lacus ligula, rutrum eu sollicitudin et, iaculis id mi. Sed at mauris vitae nisi ultrices venenatis non non enim. In hac habitasse platea dictumst. Sed consectetur congue risus, et lacinia lectus volutpat a. Donec aliquam quam ex, at imperdiet nulla luctus eu. Pellentesque laoreet, quam eu cursus luctus, dui lectus faucibus sem, in scelerisque urna metus vitae tortor."
workout.date = Date.today - 2
workout.intensity = 7
workout.user_id = user_id
workout.workout_type = Workout.workout_types[:running]
workout.save!

workout = Workout.new
workout.title = "Gym Session"
workout.desc = "Proin velit velit, posuere eu sollicitudin vitae, varius sit amet turpis. Phasellus aliquet augue sit amet nulla semper, eget pretium leo ullamcorper. Vivamus id interdum mauris. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam molestie fermentum diam auctor fermentum. Curabitur sollicitudin massa eu sapien ultricies, id ultrices ipsum volutpat. Vivamus non congue nunc, sed commodo nibh. Proin consequat dolor varius, iaculis felis eu, pharetra sem. Suspendisse potenti. Donec eros sapien, vehicula et viverra in, faucibus vel dolor."
workout.date = Date.today - 5
workout.intensity = 10
workout.user_id = user_id
workout.workout_type = Workout.workout_types[:gym]
workout.save!

user = User.new
email = "johnsmith@gmail.com"
username = "johnsmith"
user.email = email
user.username = username
user.first_name = "John"
user.last_name = "Smith"
user.sex = User.sexes[:male]
user.dob = Date.new(1970, 12, 25)
user.password = "Password"
user.password_confirmation = "Password"
user.profile_pic.attach(io: File.open('app/assets/images/profile-pic.png'), filename: 'file.pdf', content_type: 'image/png')
if User.where(email: email).or(User.where(username: username)).exists?
  User.where(email: email).or(User.where(username: username)).destroy_all
end
user.save!

