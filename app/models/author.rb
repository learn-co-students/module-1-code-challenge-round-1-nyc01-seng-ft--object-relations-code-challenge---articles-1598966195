class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select{ |variable| variable.author == self }
  end

  def magazines
    Article.all.select{ |variable| variable.magazine if variable.author == self}.uniq
  end

  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end

  def topic_areas
    self.magazines.map{ |variable| variable.magazine.category }.uniq
  end
end
