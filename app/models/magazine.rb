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

   #Helper for contributors --> Returns an array of Article instances the magazine has
   def articles
    Article.all.filter {|article| article.magazine == self}
  end 

  #Returns an array of Author instances who have written for this magazine
  def contributors
    articles.map {|article| article.author}
  end 



end
