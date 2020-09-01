require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("nick")
author2 = Author.new("greg")

magazine1 = Magazine.new("vogue", "fashion")
magazine2 = Magazine.new("food", "culinary")

article1 = Article.new(author1, magazine1, "beatniks are cool")
article2 = Article.new(author2, magazine2, "fries are the best")
article3 = Article.new(author1, magazine2, "pizza is king")
article4 = Article.new(author2, magazine1, "i love vans")


### DO NOT REMOVE THIS
binding.pry

0
