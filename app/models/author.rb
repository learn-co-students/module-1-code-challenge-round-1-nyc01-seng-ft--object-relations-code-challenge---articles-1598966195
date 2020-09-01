# DONE 
#-X `Author#initialize(name)`
# X  - An author is initialized with a name, as a string.
# X  - A name **cannot** be changed after it is initialized.
# X- `Author#name`
# X - Returns the name of the author

# #### Author - Done

# X- `Author#articles`
# X  - Returns an array of Article instances the author has written
# X- `Author#magazines`
# X  - Returns a **unique** array of Magazine instances for which the author has contributed to

#### Author - Done

# X- `Author#add_article(magazine, title)`
# X  - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
# X- `Author#topic_areas`
# X  - Returns a **unique** array of strings with the categories of the magazines the author has contributed to


class Author
  attr_reader :name


  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines
    self.articles.map { |article| article.magazine }.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    self.magazines.map { |mag| mag.category }.uniq
  end

  #helper method - counts number of articles an author has contributed to given magazine
  def article_count(mag)
    self.articles.select { |article| article.magazine == mag }.count
  end


end
