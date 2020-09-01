require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Black Panther")
author2 = Author.new("Black Widow")

magazine1 = Magazine.new("Marvel Times", "action")
magazine2 = Magazine.new("Wakanda World", "news")

article1 = Article.new(author1, magazine1, "Marvel Universe")
article2 = Article.new(author2, magazine1, "DC Times")
article3 = Article.new(author1, magazine2, "Chris Hemsworth Lifestyle")





### DO NOT REMOVE THIS
binding.pry

0
