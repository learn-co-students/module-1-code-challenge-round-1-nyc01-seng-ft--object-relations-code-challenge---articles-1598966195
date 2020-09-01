require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###




author1 = Author.new("stephen king")
magazine1 = Magazine.new("Harper's", "Pulp")
magazine2 = Magazine.new("RD", "Tabloid")

article1 = Article.new(author1, magazine1, "Some Trippy Stuff")
article2 = Article.new(author1, magazine2, "Crazy Stuff" )






### DO NOT REMOVE THIS
binding.pry

0
