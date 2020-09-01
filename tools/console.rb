require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gabe = Author.new("Gabriel")
jake = Author.new("Jake")
jess = Author.new("Jessica")
seyi = Author.new("Seyi")

science = Magazine.new("Nature", "Science")
dogs = Magazine.new("Dogs", "Science")
paint = Magazine.new("The World of Paint", "Art")
software = Magazine.new("Apple Times", "Computer Science")
water = Magazine.new("Best Water", "Nutrition")
food = Magazine.new("Eat It", "Food")

Article.new(gabe, science, "Cool Neurons")
Article.new(jake, science, "Awesome Frogs")
Article.new(jake, science, "Cooler Neurons")
Article.new(jake, dogs, "Cavaliers")
Article.new(jess, paint, "Red, Orange, Yellow")
Article.new(jess, paint, "Green, Blue")
Article.new(seyi, software, "Flatiron School")
Article.new(jess, paint, "Indigo, Violet")
Article.new(jake, food, "SPAM, its ham")
Article.new(gabe, water, "Water VS Gatorade")
### DO NOT REMOVE THIS
binding.pry

0
