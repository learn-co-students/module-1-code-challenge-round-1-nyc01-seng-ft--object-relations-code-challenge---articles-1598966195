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

   #Helper for contributors --> Returns an array of Article instances the magazine has
   def articles
    Article.all.filter {|article| article.magazine == self}
  end 

  #Returns an array of Author instances who have written for this magazine
  def contributors
    articles.map {|article| article.author}
  end 

  #CLASS METHOD
  #Given a string of magazine's name, this method returns the first magazine object that matches
  #.find --> return first matching object
  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end 

  #Returns an array strings of the titles of all articles written for that magazine
  def article_titles
    articles.map {|article| article.title}
  end 

  #Returns an array of authors who have written more than 2 articles for the magazine
    ### PSEUDO-CODING ###
    # contributors method returns all authors that have written for the magazine
    # from every author that has written for the magazine, we want to select the ones that have written more than 2 articles
  def contributing_authors
    contributors.filter {|author| author.article > 2}
  end 


   

end
