class Author
  attr_reader :name, :article
  

  @@all =[]

 
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines 
    articles.map { |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  

end
