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
    Article.all.select {|art| art.author == self }
  end 

  def magazines
    articles.map {|auth| auth.magazine}.uniq
  end 

  def add_article
  end 



end
