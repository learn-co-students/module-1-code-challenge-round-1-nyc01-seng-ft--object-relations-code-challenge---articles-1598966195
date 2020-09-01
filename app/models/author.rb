class Author
  attr_reader :name, :magazine

  @@all =[]

 
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Magazine.all.select { |article| article.author == self }
  end

  # def magazines
  #   articles.map { |article| article}
  # end

end
