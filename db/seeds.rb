# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


def create_users
    puts "creating users"
    3.times do 
        User.create(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name, 
            street: Faker::Address.street_name, 
            number: rand(20), 
            city: Faker::Address.city, 
            post_code: Faker::Address.postcode, 
            country: Faker::Address.country, 
            email: Faker::Internet.email
        )
    end
end

def create_posts
    puts "creating posts"
    User.all.each do |user|
        2.times do 
          user.posts.create(
              body: Faker::Lorem.paragraph
          )
        end
    end
end

def create_comments
    puts "Creating comments"
    Post.all.each do |post|
        post.comments.create(
            body: Faker::Lorem.paragraph
        )
    end
end

create_users
create_posts
create_comments