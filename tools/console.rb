require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

vonnegut = Author.new("Kurt Vonnegut")
didion = Author.new("Joan Didion")

rolling_stone = Magazine.new("Rolling Stone", "music journalism")
vogue = Magazine.new("Vogue", "lifestyle")

kurt_reviews_dubstep = Article.new(vonnegut, rolling_stone, "Dubstep Sucks")
didion_reviews_dubstep = Article.new(didion, rolling_stone, "Actually Dubstep Totally Rules")
kurt_responds = Article.new(vonnegut, rolling_stone, "Seriously It's Really Bad")
kurt_moves_on = Article.new(vonnegut, rolling_stone, "But Let's Talk About My New Book")
on_self_respect = Article.new(didion, vogue, "On Self-Respect")









### DO NOT REMOVE THIS
binding.pry

0
