class Author
  attr_reader :name

  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.select{|article| article.author == self}
  end

  def magazines
    
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas

  end

end
