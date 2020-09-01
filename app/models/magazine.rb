require "pry"

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

  def self.find_by_name(name)
    self.all.find {|mag| mag.name == name}
  end

  def article_titles
    articles = Article.all.select {|art| art.magazine == self}
    articles.map {|art| art.title}
  end

  def contributing_authors
    array = self.contributors
    #gives an array of all contributors for that mag
    hash ={}
    authors =[]
    array.each do |contributor|
      if !hash[contributor]
        hash[contributor] = 1
      else
        hash[contributor] += 1
      end
    end
    hash.each do |key, value|
      if value > 2
        authors << key
      end
    end
    authors
  end

  # Had extra time so made a articles method
  # to return all articles associated with
  # current magazine instance

  def articles
    Articles.all.select {|art| art.magazine == self}
  end

end
