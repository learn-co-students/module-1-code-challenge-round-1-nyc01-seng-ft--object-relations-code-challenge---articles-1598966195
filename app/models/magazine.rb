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
    Articles.all.select{|author| author.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find(name)
  end

  # iterate through all articles, elements converted to a string, into new arr
  def article_titles
    Articles.all.map{|articles| article.title.to_s}
  end

    # try to access the class itself, then contributors method, and find all author instances
      #contributed 2x
  def contributing_authors
    self.contributors.find_all{|name| author.count(name) > 2}
  end

end
