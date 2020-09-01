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
    #potentially use each COME BACK
  end 

  def self.find_by_name(name)
    self.all.select {|mag| mag.name == name } .uniq    
  end 
  ##confirmed uniq goes at the end 

  def article_titles
    
  end 

  def contributing_authors
  end 

end
