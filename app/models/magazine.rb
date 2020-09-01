class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self 
  end

  def self.all
    @@all
  end 

  def contributors
    Article.all.select {|con|con.magazine == self}
  end 


end
