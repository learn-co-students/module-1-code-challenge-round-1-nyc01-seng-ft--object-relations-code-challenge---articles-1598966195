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
    Article.all.filter { |article| article.author == self}
  end

  def magazines
    articles.filter { |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.filter { |topic| topic.category}.uniq
  end


end
