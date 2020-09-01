#Authors HAVE MANY articles


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
    Article.all.select {|article| article.author == self }
  end

  def magazines
    articles.map {|article| article.magazine }
  end

  def add_article(magazine, title)
     Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map {|magazine| magazine.category}

  
  end



end
