require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

austin = Author.new("Austin")
bex = Author.new("Rebecca")

si = Magazine.new("Sports Illustrated", "Sports")
nat_geo = Magazine.new("National Geographic", "Science")
vogue = Magazine.new("Vogue", "Fashion")

lakeshow = Article.new(austin, si, "10 Reasons the Lakers will win the title")
yosemite = Article.new(austin, nat_geo, "Yosemite flooded with tourists")
chanel = Article.new(bex, vogue, "Chanel continues to innovate and buck trends")
trips = Article.new(bex, nat_geo, "Best Summer Backpacking Trips")
trips2 = Article.new(bex, nat_geo, "Best Summer Backpacking Trips in the Pacific NorthWest")
angels = Article.new(austin, si, "How are the Angels this bad?")
nfl = Article.new(austin, si, "NFL Presses on With Season...")





### DO NOT REMOVE THIS
binding.pry

0
