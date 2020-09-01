class Author
  #returns the name of an author
  attr_accessor :name
  @@all

  def initialize(name)
    @name = name
    @@all << self
  end

  def articles
    #Returns an array of Article instances the author has written
    my_articles = []
    self.all.select do {|author| author.article == self}
    my_articles << self
  end

  def magazines
    #Returns a unique array of Magazine instances for which the author has contributed to
    self.all.map do {|author| author.magazine == self}
  end

  def add_article(magazine, title)
    if magazine.author == self && title.author == self
      magazine.author = new_article_instance
    end
  end

  def topic_areas

  end

end