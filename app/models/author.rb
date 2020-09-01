class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end
  
  def articles
    Article.all.select {|article| article.author == self }
  end

  def magazines
    self.articles.map { |article| article.magazines}
  end 

end
