require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


author1 = Author.new('john')
mag1 = Magazine.new('the best','sport')
article1 = Article.new(author1, mag1, 'good players')

author2 = Author.new('seny')
author3 = Author.new('x')
article2 = Article.new(author2, mag1, 'something')
article3 = Article.new(author3, mag1, 'cv')










### DO NOT REMOVE THIS
binding.pry


