class Author
  attr_accessor
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select {|art| art.author == self}
  end

  def magazines
    mags = self.articles.map {|art| art.magazine}
    mags.uniq
  end


end
