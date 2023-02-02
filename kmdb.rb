# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Actor.destroy_all
Movie.destroy_all
Role.destroy_all
Studio.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
# puts "there are #{Studio.all.count} studios"

studio = Studio.new
# puts studio.inspect
studio["name"] = "Warner Bros."
# puts studio.inspect
studio.save

# puts "there are #{Studio.all.count} studios."
puts Studio.all.inspect

actor = Actor.new
actor["name"] = "Christian Bale"
actor.save

actor = Actor.new
actor["name"] = "Michael Caine"
actor.save

actor = Actor.new
actor["name"] = "Liam Neeson"
actor.save

actor = Actor.new
actor["name"] = "Katie Holmes"
actor.save

actor = Actor.new
actor["name"] = "Gary Oldman"
actor.save

actor = Actor.new
actor["name"] = "Heath Ledger"
actor.save

actor = Actor.new
actor["name"] = "Aaron Eckhart"
actor.save

actor = Actor.new
actor["name"] = "Maggie Gyllenhaal"
actor.save

actor = Actor.new
actor["name"] = "Tom Hardy"
actor.save

actor = Actor.new
actor["name"] = "Joseph Gordon-Levitt"
actor.save

actor = Actor.new
actor["name"] = "Anne Hathaway"
actor.save

# puts Actor.all.count

movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = 2005
movie["rated"] = "PG-13"
movie["studio_id"] = Studio.find_by({"name" => "Warner Bros."})["id"]
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight"
movie["year_released"] = 2008
movie["rated"] = "PG-13"
movie["studio_id"] = Studio.find_by({"name" => "Warner Bros."})["id"]
movie.save

movie = Movie.new
movie["title"] = "The Dark Knight Rises"
movie["year_released"] = 2012
movie["rated"] = "PG-13"
movie["studio_id"] = Studio.find_by({"name" => "Warner Bros."})["id"]
movie.save

# puts Movie.all.inspect

# batman begins
role = Role.new
role["movie_id"] = Movie.find_by({"title" => "Batman Begins"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Christian Bale"})["id"]
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "Batman Begins"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Michael Caine"})["id"]
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "Batman Begins"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Liam Neeson"})["id"]
role["character_name"] = "Ra's Al Ghul"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "Batman Begins"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Katie Holmes"})["id"]
role["character_name"] = "Rachel Dawes"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "Batman Begins"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Gary Oldman"})["id"]
role["character_name"] = "Commissioner Gordon"
role.save

# the dark knight
role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Christian Bale"})["id"]
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Heath Ledger"})["id"]
role["character_name"] = "Joker"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Aaron Eckhart"})["id"]
role["character_name"] = "Harvey Dent"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Michael Caine"})["id"]
role["character_name"] = "Alfred"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Maggie Gyllenhaal"})["id"]
role["character_name"] = "Rachel Dawes"
role.save

# the dark knight rises
role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Gary Oldman"})["id"]
role["character_name"] = "Commissioner Gordon"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Tom Hardy"})["id"]
role["character_name"] = "Bane"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Joseph Gordon-Levitt"})["id"]
role["character_name"] = "John Blake"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Christian Bale"})["id"]
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = Movie.find_by({"title" => "The Dark Knight Rises"})["id"]
role["actor_id"] = Actor.find_by({"name" => "Anne Hathaway"})["id"]
role["character_name"] = "Selina Kyle"
role.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies = Movie.all

index_1 = 0
for movie in movies
    puts "#{movies[index_1]["title"]} #{movies[index_1]["year_released"]} #{movies[index_1]["rated"]} " + Studio.find_by({"id" => movies[index_1]["studio_id"]})["name"].to_s
    index_1 = index_1 + 1
end

# 从studio里通过movie里的studio_id找出对应studio
# 先在movie里找出对应的studio_id
# puts movies.inspect
# puts movie[index_1]["studio_id"]
# 再通过这个studio_id嵌套到studio表里查询
# puts Studio.all.inspect
# puts Studio.find_by({"id" => movies[index_1]["studio_id"]})["name"]
#{Studio.find_by({id => Movie.find_by()})}

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles = Role.all

index_2 = 0
for role in roles
    puts  "#{Movie.find_by({"id" => roles[index_2]["movie_id"]})["title"]} #{Actor.find_by({"id" => roles[index_2]["actor_id"]})["name"]} #{roles[index_2]["character_name"]}"
    index_2 = index_2 + 1
end

# movie first, then actor, then roles