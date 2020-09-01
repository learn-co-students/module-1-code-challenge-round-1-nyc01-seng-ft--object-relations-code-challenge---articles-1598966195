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

  #need to find the article count for each contributor and return if they've written more than twice for the mag
  ## how to ensure #articles is calling on the same mag instance?

  def contributing_authors
    self.contributors.filter { |contributors| contributors.articles.count > 2 }
  end

  def self.find_by_name(name)
    self.all.find { |magazines| magazines.name == name}
  end

end
