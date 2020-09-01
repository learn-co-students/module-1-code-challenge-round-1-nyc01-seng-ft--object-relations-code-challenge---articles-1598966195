# Done
# X- `Magazine#initialize(name, category)`
# X  - A magazine is initialized with a name as a string and a category as a string
# X  - The name and category of the magazine **can be** changed after being initialized.
# X- `Magazine#name`
# X  - Returns the name of this magazine
# X- `Magazine#category`
# X  - Returns the category of this magazine
# X- `Magazine.all`
# X  - Returns an array of all Magazine instances


# #### Magazine- done

# X- `Magazine#contributors`
# X  - Returns an array of Author instances who have written for this magazine

# #### Magazine

# X- `Magazine.find_by_name(name)`
# X  - Given a string of magazine's name, this method returns the first magazine object that matches
# X- `Magazine#article_titles`
# X  - Returns an array strings of the titles of all articles written for that magazine ????
# X- `Magazine#contributing_authors`
# X  - Returns an array of authors who have written more than 2 articles for the magazine

class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  @@all = []

  def self.all
    @@all
  end

  #helper method
  def articles
    Article.all.select { |article| article.magazine == self }
  end

  #Not specified but I'm assuming you want a unique list
  def contributors
    self.articles.map { |article| article.author }.uniq
  end

  #I'm assuming the 'name' argument needs to match the full magazine title exactly (case-sensitive)
  def self.find_by_name(name)
    self.all.find { |mag| mag.name == name }
  end

  def article_titles
    self.articles.map { |article| article.title }
  end

  #uses article_count method defined in Author class
  def contributing_authors
    Author.all.select { |author| author.article_count(self) > 2 }
  end

end
