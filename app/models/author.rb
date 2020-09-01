class Author
  attr_reader :name

  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.filter{|art| art.author == self}
  end

  def magazines
    articles.map{|art| art.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map{|mag| mag.category}.uniq
  end
end
