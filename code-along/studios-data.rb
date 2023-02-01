Studio.destroy_all

# puts "there are #{Studio.all.count} studios"

studio = Studio.new
# puts studio.inspect
studio["name"] = "Warner Bros."
# puts studio.inspect
studio.save

# puts "there are #{Studio.all.count} studios."
puts Studio.all.inspect