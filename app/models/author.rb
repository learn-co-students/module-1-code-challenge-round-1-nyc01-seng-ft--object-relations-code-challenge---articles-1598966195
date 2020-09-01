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
  end

end
