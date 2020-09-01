# Please copy/paste all three classes into this file to submit your solution!
class Article
    attr_reader :author, :magazine, :title

    @@all=[]

    def initialize(author,magazine,title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    

end

class Author
    attr_accessor :name
  
    @@all=[]
  
    def initialize(name)
      @name = name
      @@all<<self
    end
  
    def articles
      Article.all.select{|article| article.author == self}
    end
  
    def magazines
      self.articles.map{|article| article.magazine}.uniq
    end
  
    def add_article(magazine, title)
      Article.new(self,magazine,title)
    end
  
    def topic_areas
      self.magazines.map{|magazine| magazine.category}.uniq
    end
  end

  
  class Magazine
    attr_accessor :name, :category
  
    @@all=[]
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all<<self
    end
  
    def self.all
      @@all
    end
  
    def articles
      Article.all.select{|article| article.magazine == self}
    end
  
    def contributors
      self.articles.map{|article| article.author}
    end
  
    def self.find_by_name(name)
      self.all.find{|magazine| magazine.name == name}
    end
  
    def article_titles
      self.articles.map{|article| article.title}
    end
  
    def contributing_authors
      contributors= []
      self.contributors.each do |author|
        if self.contributors.count(author) > 2
          contributors << author
        end
      end
      contributors.uniq
    end
  
  
  end
  

