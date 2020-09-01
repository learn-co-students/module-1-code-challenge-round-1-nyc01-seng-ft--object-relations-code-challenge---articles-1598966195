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
    self.articles.filter { |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas #not working
    self.magazines.map { |topic| topic.category}.uniq
  end


end
