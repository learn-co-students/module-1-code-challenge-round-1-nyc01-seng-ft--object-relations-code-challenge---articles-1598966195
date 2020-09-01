require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


steven_king = Author.new("Steven King")
betty_jones = Author.new("Betty Jones")
daniel_mcdaniels = Author.new("Daniel McDaniels")

fancy_pets = Magazine.new("Fancy Pets", "Lifestyle")
galoshes_galore = Magazine.new("Galoshes Galore", "Clothing")
bold_bald = Magazine.new("Bold & Bald", "Lifestyle")
socks_stuff = Magazine.new("Socks n' Stuff", "Clothing")

mm_cathouse = Article.new(betty_jones, fancy_pets, "Million Dollar Cat Houses")
toe_socks = Article.new(daniel_mcdaniels, socks_stuff, "5 Must Own Toe Socks")
scary_boots = Article.new(steven_king, galoshes_galore, "Terrifying Fashion Trends")
scary_kitty = Article.new(steven_king, fancy_pets, "My Cat's Style is So Good It's Scary!")
bald_mullet = Article.new(daniel_mcdaniels, bold_bald, "Bald Up Top, Party in the Back")
scary_puppy = Article.new(steven_king, fancy_pets, "Most Frightening Halloween Costumes for Your Pup")



### DO NOT REMOVE THIS
binding.pry

0
