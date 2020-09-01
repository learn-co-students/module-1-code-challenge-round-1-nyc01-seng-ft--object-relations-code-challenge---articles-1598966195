class Magazine
  attr_accessor :name, :category

  @@all = []
  #   - A magazine is initialized with a name as a string and a category as a string
  #   - The name and category of the magazine **can be** changed after being initialized.
  # - `Magazine#name`
  # - `Magazine#category`

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    # Returns an array of Author instances who have written for this magazine
  end

  self.find_by_name(name)
  #   - Given a string of magazine's name, this method returns the first magazine object that matches
  end

  def article_titles
    #   - Returns an array strings of the titles of all articles written for that magazine
  end

  def contributing_authors
    #   - Returns an array of authors who have written more than 2 articles for the magazine
  end

end