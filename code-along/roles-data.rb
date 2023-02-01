Role.destroy_all

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
