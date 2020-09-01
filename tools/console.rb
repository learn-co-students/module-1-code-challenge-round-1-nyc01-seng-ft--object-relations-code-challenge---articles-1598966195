require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###



author2 = Author.new("emily dickinson")
author1 = Author.new("stephen king")
magazine1 = Magazine.new("Harper's", "Pulp")
magazine2 = Magazine.new("RD", "Tabloid")

article1 = Article.new(author1, magazine1, "Some Trippy Stuff")
article2 = Article.new(author1, magazine1, "Crazy Stuff" )
article3 = Article.new(author2, magazine2, "Something Deep")






### DO NOT REMOVE THIS
binding.pry

0
