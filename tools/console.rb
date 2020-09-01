require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###



billybob = Author.new("BILLEYBOHWB BOHWJAYNGULZ")


hunting_magazine = Magazine.new("HUNT'N", "Category: HUNT'N")

    art1 = Article.new(billybob, hunting_magazine, "HUNT'NDEER")
    art2 = Article.new(billybob, hunting_magazine, "HUNT'NMOOSE")
    art3 = Article.new(billybob, hunting_magazine, "HUNT'NGEESE")
    art4 = Article.new(billybob, hunting_magazine, "HUNT'N For Inner Peace: A Change in Perspective")




### DO NOT REMOVE THIS
binding.pry

0
