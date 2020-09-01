require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

skully = Author.new('skully')
blue_bottle = Author.new('blue bottle')
bob = Author.new('bob')

pry = Magazine.new('Pry Magazine', 'binding.pry')
pink = Magazine.new('pinky', 'salt lamps')


art1 = Article.new(skully, pry, 'should have gone running')
art2 = Article.new(blue_bottle, pink, 'coffee')
art3 = Article.new(blue_bottle, pry, 'water')
art4 = Article.new(blue_bottle, pry, 'isdaoigfidgf')
art5 = Article.new(skully, pink, 'shelter')
art6 = Article.new(blue_bottle, pry, '9595959595959')
art34 = Article.new(bob, pry, 'aaa')
art8 = Article.new(bob, pry, 'j')
art9 = Article.new(bob, pry, 'k')
art7 = Article.new(bob, pry, 'h')
art22 = Article.new(bob, pry, 't')




### DO NOT REMOVE THIS
binding.pry

0
