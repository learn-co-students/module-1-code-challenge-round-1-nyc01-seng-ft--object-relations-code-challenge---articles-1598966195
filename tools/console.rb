require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
dwight = Author.new("dwight")
angela = Author.new("angela")
michael = Author.new("michael")
dunder = Magazine.new("dunder","info")
mifflin = Magazine.new("mifflin", "entertainment")
scranton = Magazine.new("scranton","politics")
jimbo = Article.new(dwight,scranton,"jimbo")
wedding = Article.new(dwight, scranton, "wedding")
promote = Article.new(dwight, scranton, "promote")









### DO NOT REMOVE THIS
binding.pry

0
