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
    Article.all.select {|magazine| magazine.author}
    #have to add .uniq
  end

  def add_article(magazine,title)
    #add
  end

  def topic_areas
    #will require a .uniq 
    #simialar to the article/magazine methods above.
    #utlize magazine method and go down to categories.
  end


end
