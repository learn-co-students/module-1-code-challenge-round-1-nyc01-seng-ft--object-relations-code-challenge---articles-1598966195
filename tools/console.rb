require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

john = Author.new("John")
steve = Author.new("Steve")

sci_fi = Magazine.new("Science-Fic", "Fiction")
animals = Magazine.new("Hungry animals", "Educational")

test_art = Article.new(john, animals, "Art check")
art1 = Article.new(steve, sci_fi, "The one Art")






### DO NOT REMOVE THIS
binding.pry

0
