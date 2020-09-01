class Magazine
  attr_accessor :name, :category
  @@all =[]

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    Article.all.select {|author| author.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == self}
  end

  def article_titles
    Article.all.select { |t| t.magazine == self}

  end

  def contributing_authors
    Author.all.select { |a| a.total_article > 2}

  end

  def total_article
    article = 0
    Article.all.each { |a| total_article = a.article}


  end

end
