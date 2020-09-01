class Author
  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self 
  
  end

  def self.all
    @@all
  end 

  def articles
    Articles.all.select { |art| art.author == self }
  end 



end
