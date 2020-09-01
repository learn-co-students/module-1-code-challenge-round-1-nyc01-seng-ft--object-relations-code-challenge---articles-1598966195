require 'pry'
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
  def name
    self.name
  end
  def category 
    self.name
  end
  def contributors
    Aricle.all.filter {|article| article.author = self}
  end
  def articles #for article_titles
    Article.all.select {|article| article = self}
  end
  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name} 
  end
  def article_titles
    self.articles.select {|article| article.title}
  end
  
  def contributing_authors
    self.contributors.title.filter {|contributor|contributor.length > 2}
  end

end
