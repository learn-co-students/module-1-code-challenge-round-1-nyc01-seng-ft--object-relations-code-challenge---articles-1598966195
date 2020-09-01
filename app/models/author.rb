class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  
  end

  def self.all 
    @@all
  end 

  #Returns an array of Article instances the author has written
  def articles
    Article.all.filter {|article| article.author == self}
  end 

  #Returns a **unique** array of Magazine instances for which the author has contributed to
  def magazines
    articles.map {|article| article.magazine}.uniq
  end 


end


