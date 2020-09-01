require_relative '../config/environment.rb'
require_relative '../app/models/article'
require_relative '../app/models/magazine'
require_relative '../app/models/article'


def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Steven")
author2 = Author.new("Terry")
author3 = Author.new("Amanda")
author4 = Author.new("Howard")

magazine1 = Magazine.new("Vouge", "Fashion")
magazine2 = Magazine.new("Popular Science", "Science")
magazine3 = Magazine.new("Cosmopolitan", "Fashion")

article1 = Article.new(author1, magazine1, "Summer outfits")
article2 = Article.new(author2, magazine1, "Winter Outfits")
article3 = Article.new(author3, magazine2, "The Moon")







### DO NOT REMOVE THIS
binding.pry

0
