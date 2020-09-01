require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("James")
author2 = Author.new("John")
author3 = Author.new("Abby")


mag1 = Magazine.new("The Source", "Hip-Hop")
mag2 = Magazine.new("Transworld", "Skateboarding")
mag3 = Magazine.new("Golf Digest", "Sports")

art1 = Article.new(author1,mag1,"B.I.G")
art2 = Article.new(author2,mag2,"Street Skate")
art3 = Article.new(author3,mag3,"The GOAT TW")
art4 = Article.new(author1,mag1,"Jay-z")





### DO NOT REMOVE THIS
binding.pry

0
