class Magazine

  attr_accessor :name, :category, :article

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
    Article.all.select { |author| author.magazine == self}
  end

  def self.find_by_name(name)
    all.find { |magazine| magazine.name == name}
  end

  def article_titles
    Article.all.select { |articel| article.title == self }
  end

  def total_articles
    contributors.each { |article| total += article.title }
  end

  def contributing_authors
    count = 0
    num_articles = 0
    all.select { |articles| articles }

  end






end
