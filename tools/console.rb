require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

john = Author.new("John")
steve = Author.new("Steve")

aut_check = Author.new("Bob")

sci_fi = Magazine.new("Science-Fic", "Fiction")
animals = Magazine.new("Hungry animals", "Educational")

test_mag = Magazine.new("Food", "Health")

test_art = Article.new(john, animals, "Art check")
art1 = Article.new(steve, sci_fi, "The one Art")

article1 = Article.new(aut_check, animals, "Big Article")






### DO NOT REMOVE THIS
binding.pry

0
