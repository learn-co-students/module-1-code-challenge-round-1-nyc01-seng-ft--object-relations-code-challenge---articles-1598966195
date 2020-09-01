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

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    self.magazines.map { |mags| mags.category }
  end

end
