require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


# Tests for Magazine 

mag1 = Magazine.new("Vogue", "Fashion")
mag2 = Magazine.new("Elle", "Celeb Drama")
mag3 = Magazine.new("Cosmo", "Beauty")

#Tests for Author 

aut1 = Author.new("Madeline")
aut2 = Author.new("Derek")
aut3 = Author.new("Conrad")

#Tests for Article (join)

art1 = Article.new(aut1, mag1, "TitleA")
art2 = Article.new(aut2, mag2, "TitleB")
art3 = Article.new(aut3, mag3, "TitleC")










### DO NOT REMOVE THIS
binding.pry

0
