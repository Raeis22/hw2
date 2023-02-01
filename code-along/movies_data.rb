Movie.destroy_all

movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = 2005
movie["rated"] = "PG-13"
# movie["studio_id"] = 
movie.save

puts Studio.find_by({"name" => "Warner Bros."})["id"]