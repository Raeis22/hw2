Movie.destroy_all

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