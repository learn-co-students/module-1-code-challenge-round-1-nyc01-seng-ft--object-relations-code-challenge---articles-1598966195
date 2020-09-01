class Author
  
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select{|article| article.author == self}
  end

  def magazines
    articles.map{|magazine| magazine.author}.uniq
  end
  
  def contributors
    Article.all.select{|article| magazine.author == self}
  end
  
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    
  end

end
