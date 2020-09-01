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

  def articles
    Article.all.select{|article| article.author == self}
  end

  def magazines
    self.articles.map{|m| m.magazine}
  end
  
  
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    self.articles.map{|a| a.magazine}
  end

end
