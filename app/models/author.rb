# DONE 
#- `Author#initialize(name)`
#   - An author is initialized with a name, as a string.
#   - A name **cannot** be changed after it is initialized.
# - `Author#name`
#   - Returns the name of the author

# #### Author - Done

# - `Author#articles`
#   - Returns an array of Article instances the author has written
# - `Author#magazines`
#   - Returns a **unique** array of Magazine instances for which the author has contributed to

#### Author - Done

# - `Author#add_article(magazine, title)`
#   - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
# - `Author#topic_areas`
#   - Returns a **unique** array of strings with the categories of the magazines the author has contributed to


class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
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


end
