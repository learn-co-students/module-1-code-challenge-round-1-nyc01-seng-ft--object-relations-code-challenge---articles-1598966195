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
    Article.all.select {|article| article.author == self}
  end

  def magazine
    self.articles.map {|magazine| magazine.author.name}.uniq

  end

  def add_article(magazine, title)
  article = article.new(magazine,title)
  articel.author == self
  end


end
