class Author
  
  attr_reader :name
  # - A name **cannot** be changed after it is initialized.

  @@all = []

  def initialize(name)
    # - `Author#name`
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    # - Returns an array of Article instances the author has written
    Article.all.select {|article| article.author == self}
  end

  def magazines
    # - Returns a **unique** array of Magazine instances for which the author has contributed to
    self.articles.map {|article| article.magazine}.uniq
  end

    def magazine_articles(magazine)
    # - Returns a **unique** array of Magazine instances for which the author has contributed to
    self.articles.select {|article| article.magazine == magazine}.count
  end

  def add_article(magazine, title)
    # - Given a magazine (as Magazine instance) and a title (as a string), 
    # creates a new Article instance and associates it with that author and that magazine.
    Article.new(self, magazine, title)
  end
  
  def topic_areas
    # - Returns a **unique** array of strings with the categories of the 
    # magazines the author has contributed to
    self.magazines.map {|article| article.category}.uniq
  end

end