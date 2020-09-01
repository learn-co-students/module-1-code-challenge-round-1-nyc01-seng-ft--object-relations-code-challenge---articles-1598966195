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

  def self.find_by_name(name)
    self.all.find{|mag| mag.name == name}
  end

  def articles
    Article.all.select{|article| article.magazine == self}
  end

  def article_titles

  end

  def contributors
    self.articles.map{|a| a.author}
  end
  
  def contributing_authors
    self.contributors.map{}
  end
end
