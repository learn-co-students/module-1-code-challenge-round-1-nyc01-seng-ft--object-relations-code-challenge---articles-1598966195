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
food = Magazine.new("Eat It", "Food")

Article.new(gabe, science, "Cool Neurons")
Article.new(jake, science, "Awesome Frogs")
Article.new(jake, dogs, "Cavaliers")
Article.new(jake, dogs, "Cavalier puppies")
Article.new(jake, dogs, "puppies")
Article.new(seyi, software, "Flatiron School")
Article.new(jess, paint, "Indigo, Violet")
Article.new(jake, food, "SPAM, its ham")
Article.new(jess, dogs, "Cavapoos")

### DO NOT REMOVE THIS
binding.pry

