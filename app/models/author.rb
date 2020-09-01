class Author
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select{|article| article.author == self}
  end

  def magazines
    articles.map{|article| article.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end
  
  def topic_areas
    a = []
    Article.all.each do |article|
      if article.author == self
        a << article.magazine.category
      end

    end
    a = a.uniq
    a
  end


end



