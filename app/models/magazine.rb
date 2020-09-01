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

  def articles
    Article.all.select {|magazine| article.magazine == self}
  end

  def contributors
    self.articles.select {|con| con.author}
  end

  def self.find_by_name(name)
    self.magazine.select {|mag_name| mag_name.find}
  end

  def article_titles
    self.magazine.select {|title| title.magazine.name}
  end

end
