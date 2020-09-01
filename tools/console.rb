require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

magazine1 = Magazine.new("Magazine1", "Business")
magazine2 = Magazine.new("Magazine2", "Sport")
magazine3 = Magazine.new("Magazine3", "Business")
magazine4 = Magazine.new("Magazine4", "Liberal")

author1 = Author.new("Author1")
author2 = Author.new("Author2")
author3 = Author.new("Author3")
author4 = Author.new("Author4")

article1 = Article.new(author1, magazine1, "article1")
article2 = Article.new(author2, magazine1, "article2")
article3 = Article.new(author2, magazine3, "article3")
article4 = Article.new(author3, magazine4, "article4")
article5 = Article.new(author1, magazine2, "article5")
article6 = Article.new(author4, magazine4, "article6")
article7 = Article.new(author4, magazine4, "article7")
article8 = Article.new(author4, magazine4, "article8")
article3 = Article.new(author2, magazine4, "article9")
article3 = Article.new(author2, magazine4, "article10")
article3 = Article.new(author2, magazine4, "article11")







### DO NOT REMOVE THIS
binding.pry

0
