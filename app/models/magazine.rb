class Magazine
  attr_accessor :name, :category

  # class variable
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

  # article titles should return array of strings of the titles for all articles
  def article_titles
    Articles.all.map {}
  end

    # try to access the class itself, the contributors method, and find all author instances
      #contributed 2x
  def contributing_authors
    self.contributors.find_all{|name| author.count(name) > 2}
  end

end
