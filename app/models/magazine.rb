class Magazine
  #covers Magazine#name and Magazine#category
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
  #@ = instance variable
    @name = name
    @category = category
    @@all << self
  end

  def self.all
  #returns an array of all Mag instances
    @@all
  end

  def contributors
    #Returns an array of Author instances who have written for this magazine
    self.all.map do {|author| author.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find {|name| name.magazine == self}
  end

  def article_titles

  end

  def contributing_authors

  end

end
