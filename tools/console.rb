require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

jason = Author.new("Jason")
rachel = Author.new("Rachel")

newtype = Magazine.new("Newtype", "Anime")
sight = Magazine.new("Sight and Sound", "Film")

eva = Article.new(jason, newtype, "Eva 3.0 + 1.0")
cage = Article.new(rachel, sight, "Cage out of Space")
rocket = Article.new(jason, sight, "Ronnie Rocket at Last!")
gudetama = Article.new(rachel, newtype, "Gudetama the Animation")

jason.add_article(newtype, "Keep Your Hands off Yuasa-san!")
jason.add_article(newtype, "Mamoru Oshii the God")









### DO NOT REMOVE THIS
binding.pry

0
