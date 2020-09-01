require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

brandy = Author.new("Brandy")
caryn = Author.new("Caryn")
sean = Author.new("Sean")
sam = Author.new("Sam")


m1 = Magazine.new("Vogue", "Fashion")
m2 = Magazine.new("Architectural Digest", "Design")
m3 = Magazine.new("XXL", "Hip-Hop")
m4 = Magazine.new("Times", "International")

a1 = Article.new(brandy, m4, "Full Moon")
a2 = Article.new(caryn, m1, "Code With The Flow")
a3 = Article.new(sean, m3, "Rhythm of a Nation")
a4 = Article.new(brandy, m4, "Have You Ever")
a5 = Article.new(caryn, m2, "Organic Designs")

### DO NOT REMOVE THIS
binding.pry

0
