require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Bryam")
author2 = Author.new("Sabrina")
author3 = Author.new("Bob")
author4 = Author.new("Billy")

mag0 = Magazine.new("Food", "Burgers")
mag1 = Magazine.new("Vogue", "Fashion")
mag2 = Magazine.new("ESPN", "Sports")
mag3 = Magazine.new("Food", "Food")
mag4 = Magazine.new("TMZ", "Drama")
mag5 = Magazine.new("TIMES", "News")

art1 = Article.new(author1, mag1, "Gucci")
art2 = Article.new(author2, mag2, "NBA")
art3 = Article.new(author1, mag1, "Fendi")
art4 = Article.new(author3, mag1, "Unhealthy Foods")
art5 = Article.new(author3, mag5, "Trump")
art6 = Article.new(author1, mag1, "Tommy H.")
art7 = Article.new(author4, mag1, "MCM")
art8 = Article.new(author4, mag1, "LV")
art3 = Article.new(author4, mag1, "Old Navy")









### DO NOT REMOVE THIS
binding.pry

0
