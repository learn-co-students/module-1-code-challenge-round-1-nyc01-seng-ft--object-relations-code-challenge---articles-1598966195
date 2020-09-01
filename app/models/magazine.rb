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
    articles.map{|article|article.author}    ##had uniq here and realized that the readme did not specify this, and it would help me with contributing authors to not have it here
  end

  def article_titles
    articles.map{|article|article.title}
  end

  def contributing_authors
    contributors.select{ |cont| contributors.count(cont) > 1 }.uniq
  end

  def self.find_by_name(name)
    self.all.find{|mag|mag.name == name}
  end

end
