require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


auth1 = Author.new("Gon")
auth2 = Author.new("Killua")

mag1 = Magazine.new("HxH", "Shonen")
mag2 = Magazine.new("HunterHunter", "Anime")

art1 = Article.new(auth1, mag1, "York New City")
art2 = Article.new(auth2, mag2, "Zoldyck Family")
art3 = Article.new(auth1, mag1, "Chimera Ant")
art4 = Article.new(auth1, mag2, "Heavens Arena")






### DO NOT REMOVE THIS
binding.pry

0
