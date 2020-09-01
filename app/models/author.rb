class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    self.magazines.map do |magazines|
      magazines.author
    end.uniq
  #Author#magazines`
  #Returns a **unique** array of Magazine instances for which the author has contributed to
  end


  def add_article(magazine, title)
  #Author#add_article(magazine, title)`
  #Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
  end

  def topic_areas
    self.topic_areas.map do |topic_areas|
      topic_areas.author.categories
    end.uniq
  end
  


  def self.all
    @@all
  end

end
