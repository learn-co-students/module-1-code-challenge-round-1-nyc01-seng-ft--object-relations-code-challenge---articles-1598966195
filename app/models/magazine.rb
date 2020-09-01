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
    articles.map{|art| art.author}
  end

  def self.find_by_name(name)
    self.all.find{|mag| mag.name == name}
  end

  def articles 
    Article.all.filter{|art| art.magazine == self}
  end

  def article_titles
    articles.map{|art| art.title}
  end

  def contributing_authors
    authors_count = {}
    articles.map do |art|
      if authors_count.key?(art.author)
        authors_count[art.author] += 1
      else
        authors_count[art.author] = 1
      end
    end
    authors = []
    authors_count.each do |key, value|
      if value > 2
        authors << key
      end
    end
    authors
  end

end
