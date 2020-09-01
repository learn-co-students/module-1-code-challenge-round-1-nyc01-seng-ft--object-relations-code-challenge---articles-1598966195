class Author
  
  attr_reader :name

  # - `Author#initialize(name)`
  #   - A name **cannot** be changed after it is initialized.
  # - `Author#name`
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    #   - Returns an array of Article instances the author has written
  end

  def magazines
    #   - Returns a **unique** array of Magazine instances for which the author has contributed to
  end

end

  def add_article(magazine, title)
    #   - Given a magazine (as Magazine instance) and a title (as a string), 
    # creates a new Article instance and associates it with that author and that magazine.
    Article.new(self, magazine, title)
  end
  
  def topic_areas
    #   - Returns a **unique** array of strings with the categories of the 
    # magazines the author has contributed to
  end