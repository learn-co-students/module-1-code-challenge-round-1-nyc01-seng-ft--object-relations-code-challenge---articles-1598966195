class Magazine
  attr_accessor :name, :category
  @@all=[]

  def initialize(name, category)
    @name = name
    @category = category
    @@all<<self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select{|article|article.magazine == self} ##wrote this so magazines can recognize their articles
  end

  def contributors
    articles.map{|article|article.author}.uniq
  end

  def article_titles
    articles.map{|article|article.title}
  end

  def contributing_authors
    catalog = articles.map{|article|article.author}
    
  end

  def self.find_by_name(name)
    self.all.find{|mag|mag.name == name}
  end

end
