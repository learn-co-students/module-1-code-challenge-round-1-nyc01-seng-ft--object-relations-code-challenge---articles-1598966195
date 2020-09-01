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
    Article.all.select { |art| art.magazine == self}
  end

  def contributors
    articles.map { |art| art.author}
  end

  def self.find_by_name(name)
    self.all.find { |mag| mag.name == name}
  end

  def article_titles
    articles.map { |at| at.title}
  end

  def total_articles
    total = 0
    articles.each { |art| total += article.author}
    return total
  end
  
  def contributing_authors
     articles.map { |art| art.author > 2}
  end

end
