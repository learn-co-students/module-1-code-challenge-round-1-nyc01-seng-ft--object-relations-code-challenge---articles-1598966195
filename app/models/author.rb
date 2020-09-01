class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.author == self}
  end
  
  def magazines
    Magazine.all.select.uniq {|magazine| magazine.author == self}
  end

end
