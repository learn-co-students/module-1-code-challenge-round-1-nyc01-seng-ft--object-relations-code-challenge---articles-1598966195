require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Jay")
author2 = Author.new("Harry")
author3 = Author.new("Danny")

magazine1 = Magazine.new("time", "news")
magazine2 = Magazine.new("NY", "Fashion")

article1 = Article.new(author1,magazine1,"article1")
article2 = Article.new(author1,magazine2,"article2")
article3 = Article.new(author1,magazine2,"article3")

article4 = Article.new(author2,magazine1,"article4")
article5 = Article.new(author3,magazine2,"article5")






### DO NOT REMOVE THIS
binding.pry

0
