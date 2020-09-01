require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

vonnegut = Author.new("Kurt Vonnegut")
rolling_stone = Magazine.new("Rolling Stone", "music journalism")
kurt_reviews_dubstep = Article.new(vonnegut, rolling_stone, "Dubstep Sucks")








### DO NOT REMOVE THIS
binding.pry

0
