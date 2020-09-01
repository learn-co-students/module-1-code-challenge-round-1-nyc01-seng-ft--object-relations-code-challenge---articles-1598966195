require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

auth1 = Author.new("Katherine")
auth2 = Author.new("Ziggy")
auth3 = Author.new("Bryn")
auth4 = Author.new("Ari")

mag1 = Magazine.new("Fintekki", "Financial Technology")
mag2 = Magazine.new("Doggy Dog World", "Dog News and Entertainment")
mag3 = Magazine.new("Rockhound", "Geology")
mag4 = Magazine.new("Polaroid Enthusiast", "Polaroid Photography")

arti1 = Article.new(auth1, mag1, "Fintech Savvy In Five Easy Steps")
arti2 = Article.new(auth2, mag2, "Why I don't Play Fetch - Op Ed")
arti3 = Article.new(auth1, mag1, "A Beachcombers Guide To Rockhounding On Long Island")
arti4 = Article.new(auth1, mag1, "The Subjects Of My Photos - Words Of Wisdom From A Four Year Old Photographer")






### DO NOT REMOVE THIS
binding.pry

0
