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
    # Returns an array of Article instances the author has written
    Articles.all.select { |article| article.self}
  end

  def magazines
    # Returns a **unique** array of Magazine instances for which the author has contributed to
  end


end
