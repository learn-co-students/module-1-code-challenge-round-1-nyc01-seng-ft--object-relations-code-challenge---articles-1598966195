require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sam = Author.new("Sam")
val = Author.new ("Val")
mia = Author.new ("Mia")


m1 = Magazine.new("Vogue", "Fashion")
m2 = Magazine.new("Sports Illustrated", "Sports")
m3 = Magazine.new("National Geographic", "Travel")

art1 = Article.new(sam, m1,"Fallfashion")
art2 = Article.new(val, m2, "Homerun")
art3 = Article.new(mia, m3, "NortheasternFall") 









### DO NOT REMOVE THIS
binding.pry

0
