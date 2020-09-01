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

  def self.find_by_name(name)
    self.all.find{|magazine| magazine.name == name}
  end

  def articles
    Article.all.filter {|article| article.magazine == self}
  end

  def contributors
    self.articles.map{|article| article.author}
  end

  def article_titles
    self.articles.map{|article| article.title}
  end

  def contributing_authors
    self.contributors.find_all{|author| self.contributors.count(author) > 2}.uniq
  end
end
