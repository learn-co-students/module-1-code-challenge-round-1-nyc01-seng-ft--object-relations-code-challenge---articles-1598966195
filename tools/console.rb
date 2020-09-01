require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


author1 = Author.new('john')
mag1 = Magazine.new('the best','sport')
article = Article.new(author1, mag1, 'good players')









### DO NOT REMOVE THIS
binding.pry


