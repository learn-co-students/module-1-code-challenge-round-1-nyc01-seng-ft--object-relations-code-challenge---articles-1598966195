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


end
