class Author
  attr_accessor
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select {|art| art.author == self}
  end

  def magazines
    mags = self.articles.map {|art| art.magazine}
    mags.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    self.articles.map {|art| art.magazine.category}.uniq
  end

end
