# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    username: 'steven', 
    email: 'steven@gmail.com',
    name: 'Steven Z',
    password: "123",
    age: 25,
    summary: Faker::TvShows::MichaelScott.quote, 
    work_info: 'Engineer',
    sex: 'male',
    budget: "$#{(rand(23..45)*50).to_s}",
    move_in_date: Faker::Date.between(from: 1.day.from_now, to: 1.year.from_now),
    cleaning: 'Every Few Days',
    guests: 'Fine With Having Guests',
    schedule: 'I Sleep Early',
    pets: 'I Have No Pets'
)

30.times do 
    User.create(
        username: Faker::Internet.unique.user_name, 
        email: Faker::Internet.email,
        name: Faker::Name.male_first_name + ' ' + Faker::Name.last_name,
        password: "123",
        age: rand(18..45),
        summary: Faker::TvShows::RickAndMorty.quote, 
        work_info: Faker::Company.industry,
        sex: 'male',
        budget: "$#{(rand(23..45)*50).to_s}",
        move_in_date: Faker::Date.between(from: 1.day.from_now, to: 1.year.from_now),
        cleaning: ['Every Few Days', 'Once a Week', 'Every Few Weeks', 'Once a Month'].sample,
        guests: ['Fine With Having Guests', 'Not Fine with Guests'].sample,
        schedule: ['I Sleep Early', 'I Sleep Late', 'I Work Late', 'In Bed By 12'].sample,
        pets: ['I Have a Dog', 'I Have a Cat', 'I Have a Snake', 'I Have a Lizard', 'I Have No Pets'].sample
    )
end

30.times do 
    User.create(
        username: Faker::Internet.unique.user_name, 
        email: Faker::Internet.email,
        name: Faker::Name.female_first_name + ' ' + Faker::Name.last_name,
        password: "123",
        age: rand(18..34),
        summary: Faker::TvShows::MichaelScott.quote,
        work_info: Faker::Company.industry,
        sex: 'female',
        budget: "$#{(rand(23..45)*50).to_s}",
        move_in_date: Faker::Date.between(from: 1.day.from_now, to: 1.year.from_now),
        cleaning: ['Every Few Days', 'Once a Week', 'Every Few Weeks', 'Once a Month'].sample,
        guests: ['Fine With Having Guests', 'Not Fine with Guests'].sample,
        schedule: ['I Sleep Early', 'I Sleep Late', 'I Work Late', 'In Bed By 12'].sample,
        pets: ['I Have a Dog', 'I Have a Cat', 'I Have a Snake', 'I Have a Lizard', 'I Have No Pets'].sample
    )
end