User.destroy_all
Trail.destroy_all
Hike.destroy_all
Park.destroy_all
State.destroy_all
ParkState.destroy_all

def random_difficulty
    diff = ["easy", "medium", "strong"]
    return diff.sample
end 

def random_boolean
    return rand(0..1.0) > 0.5
end

30.times do |x|
    User.create(name: Faker::FunnyName.unique.name)
end 

30.times do |x|
    Park.create(
        name: Faker::Movie.unique.title,
        park_info: Faker::Hipster.sentences,
        waterfalls: random_boolean
    )
end

20.times do |x|
    Trail.create(name: Faker::Address.unique.city, distance_of_trail: rand(1..1000), elevation: rand(1..8000), difficulty: random_difficulty, park: Park.all.sample )
end

80.times do |x|
    Hike.create(name: Faker::Hipster.unique.word, user: User.all.sample, trail: Trail.all.sample, user_rating: rand(1..10))
end


50.times do |x|
    State.create(name: Faker::Address.unique.state)
end

30.times do |x|
    ParkState.create(park: Park.all.sample, state: State.all.sample)
end 


