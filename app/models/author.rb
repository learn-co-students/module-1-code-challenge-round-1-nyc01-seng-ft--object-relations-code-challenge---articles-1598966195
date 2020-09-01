class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
  
  end
  
  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def magazine
    self.articles.map {|mag| mag.magazine}
  end

  #def add_article(magazine, title)
  #  self.author.filter

 # end


end

#didnt want my code to break but didnt have enough time to finish
#so i commented out