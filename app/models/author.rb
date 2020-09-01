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

  def add_article(magazine, title)    #expect to return article instance associated with author and magazine
    Magazine.new(self,magazine)
  end 

  def topic_areas
    articles.map {|art|art.magazine}.uniq #should return the magazine that the author wrote  

  end 



end
