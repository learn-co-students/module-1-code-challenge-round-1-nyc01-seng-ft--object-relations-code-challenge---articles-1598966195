require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Cathy")
author2 = Author.new("Peter")

mag1 = Magazine.new("People", "fiction")
mag2 = Magazine.new("WWD", "fashion")

art1 = Article.new(author1, mag1, "Life is short")
art2 = Article.new(author2, mag2, "Which is this year's color")
art3 = Article.new(author1, mag2, "What should you need wear in office")







### DO NOT REMOVE THIS
binding.pry

0
