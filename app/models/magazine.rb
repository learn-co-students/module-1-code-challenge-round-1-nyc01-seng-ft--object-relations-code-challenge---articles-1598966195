class Magazine
  
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.filter { |articles| articles.magazine == self}
  end

  def contributors
    self.articles.map { |articles| articles.author }.uniq
  end

  def article_titles
    self.articles.map { |articles| articles.title }
  end

  ## refactor to call on the contributors method
  def contributing_authors
    self.articles.filter { |articles| self.articles.count > 2}.map { |articles| articles.author }.uniq
  end

  def self.find_by_name(name)
    self.all.find { |magazines| magazines.name == name}
  end

end
