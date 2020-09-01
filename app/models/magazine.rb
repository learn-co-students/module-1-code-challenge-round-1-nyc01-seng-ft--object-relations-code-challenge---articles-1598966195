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
  
  def self.find_by_name(sought_name)
    self.all.find { |mag| mag.name  == sought_name }
  end  

  def articles
    Article.all.select { |article| article.magazine == self}
  end  

  def article_titles
    self.articles.map { |article| article.title }
  end  

  def contributors
    self.articles.map { |articles| article.author }.uniq
  end  

  def contributing_authors
    #
  end  


end
