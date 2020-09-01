class Magazine
  attr_accessor :name, :category
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    articles = Article.all.select {|art| art.magazine == self}
    articles.map {|art| art.author} #doesn't specify unique
  end


end
