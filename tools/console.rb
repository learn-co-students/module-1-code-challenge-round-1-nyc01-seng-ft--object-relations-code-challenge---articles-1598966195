require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###



#AUTHORS
jess = Author.new("Jessica")
rach = Author.new("Rachel")

#MAGAZINES
dd = Magazine.new("Dasher's Digest", "Work")
ag = Magazine.new("American Girl", "Fun")
cosmo = Magazine.new("Cosmo", "Fun")

#ARTICLES
tips = Article.new(jess, dd, "DD Tips")
dolls = Article.new(rach, ag, "Doll Names")
love = Article.new(jess, cosmo, "Love Stuff")





### DO NOT REMOVE THIS
binding.pry

0
