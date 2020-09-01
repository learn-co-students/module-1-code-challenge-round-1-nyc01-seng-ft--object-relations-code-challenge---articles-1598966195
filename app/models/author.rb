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

  #Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end 
  
  #Returns a **unique** array of strings with the categories of the magazines the author has contributed to
  def topic_areas
    self.articles.map {|article| article.magazine.category}.uniq
  end 

end


