class Author

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.filter { |articles| articles.author == self}
  end

  def magazines
    self.articles.map { |articles| articles.magazine }.uniq
  end

  def add_article
    
  end

end
