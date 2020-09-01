class Magazine
  
  attr_accessor :name, :category
  #   - The name and category of the magazine **can be** changed after being initialized.

  @@all = []

  #   - A magazine is initialized with a name as a string and a category as a string
  def initialize(name, category)
    # - `Magazine#name`
    # - `Magazine#category`
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    # returns array of magazines
    @@all
  end

  def all_contributions
    # Returns an array of Author instances who have written for this magazine
    Article.all.select {|article| article.magazine == self}.map {|article| article.author}
  end

  def contributors
    # Returns an array of Author instances who have written for this magazine
    Article.all.select {|article| article.magazine == self}.map {|article| article.author}.uniq
  end

  def self.find_by_name(name)
    # - Given a string of magazine's name, this method returns the first magazine object that matches
    self.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    # - Returns an array strings of the titles of all articles written for that magazine
    Article.all.select {|article| article.magazine == self}.map {|article| article.title}
  end

  def contributing_authors
    #   - Returns an array of authors who have written more than 2 articles for the magazine
    author = self.all_contributions
    author.filter {|author| author.magazine_articles(self) > 2}.uniq
  end

end