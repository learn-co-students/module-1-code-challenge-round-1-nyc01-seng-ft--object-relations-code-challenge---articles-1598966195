require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

scavens = Author.new("Scavens")
ravver = Author.new("Ravver")
ciel = Author.new("Ciel")
richards = Author.new('Richards')
truants = Magazine.new('Truants', 'Music')
crackmag = Magazine.new('CrackMag', 'Music')
visual = Magazine.new('VVVVVisual', 'Design')
donut = Magazine.new('Donut', 'Automotive')
wacb = Article.new(richards, donut, "Why Are Cars BAD?")
cao = Article.new(ciel, visual, "Chain PNGS Are Over!")
tttt = Article.new(ravver, crackmag, "Top Twenty Twenty Twenty")
wawd = Article.new(ciel, truants, "Why We Aren't Dancing")
gftl = Article.new(scavens, donut, "Go Fast Turn Left")
nta = Article.new(ciel, truants, "Not This Again..")






### DO NOT REMOVE THIS
binding.pry

0
