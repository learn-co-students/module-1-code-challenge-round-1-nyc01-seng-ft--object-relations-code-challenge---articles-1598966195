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

  def contributors
    contrib = Article.all.select {|article| article.magazine == self }
    contrib.map {|co| co.author}
  end 
  #potentially use each COME BACK

  def self.find_by_name(name)
    self.all.select {|mag| mag.name == name } .uniq    
  end 
  ##confirmed uniq goes at the end 

  def article_titles
    contrib = Article.all.select {|article| article.magazine == self }
    contrib.map {|co| co.title} 
  end 
  #used contributors method v similar

  def contributing_authors
    contrib = Article.all.select {|article| article.magazine == self }
    contrib.find_all{ |aut|aut.include? > 2 }
  end 
    #first get authors from article
    #want to filter to who has written > 2
    #not sure whether to use select? 
end
