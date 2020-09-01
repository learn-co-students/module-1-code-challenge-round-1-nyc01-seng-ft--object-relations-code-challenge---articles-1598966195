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

  def articles
    Article.all.select {|magazine| article.magazine == self}
  end

  def contributors
    self.article.map {|con| con.author}
  end



end
