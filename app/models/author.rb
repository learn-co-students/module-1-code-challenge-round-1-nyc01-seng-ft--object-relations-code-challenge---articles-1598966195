require 'pry'
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
  def name
    self.name
  end
  def articles
    Article.all.select {|article| article.author = self}
  end
  def magazines
    Magazine.all.select {|magazine| magazine.author = self}.uniq
  end
  def add_article(magazine, title)
    Article.new(author, magazine)
  end
  def topic_area
    self.magazines.select {|topic| topic.categories}.uniq
  end
end
