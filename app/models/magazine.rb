#Magazine HAS MANY Articles



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

  def contributors
    Article.all.select {|article| article.author.name}
  
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  
  end

  # def article_titles
  #   Article.all.select {|article| article.magazine == self}.map {|title| magazine.title}
  
  # end

  def articles
    Article.all.select {|article| article.magazine == self }
  end

  def article_titles
    articles.map {|magazine| magazine.title}
  
  end

  def contributing_authors
    #Returns an array of authors who have written more than 2 articles for the magazine
    # Article.all.select {|article| article.author.name if self.contributors > 2} Didn't work

    
    #Not sure how to get the amount of instances in Article.all where an author appears 

    # contributors = Article.all.select{|article| article.author.name}
    
    contributors = []
    Article.all.each do |ele|
      if ele.author.name > 2
        contributors << ele
      end
    end
        


      

    
  
  
  end




end
