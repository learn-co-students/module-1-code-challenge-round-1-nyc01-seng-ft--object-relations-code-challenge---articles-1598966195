# Please copy/paste all three classes into this file to submit your solution!
class Article
    attr_reader :author, :magazine, :title
    @@all = []

    def initialize(author, magazine, title)
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
  
    def articles
      Article.all.select{|article| article.magazine == self}
    end
  
    def contributors
      articles.map{|article| article.author}.uniq
      # a = []
      # Article.all.each do |article|
      #   if article.magazine ==self
      #     a << article.author
      #   end
  
      # end
      # a = a.uniq
      # a
    end
    
    def self.find_by_name(name)
      all.each do |mag|
        if mag.name == name
          mag
        end
      end
    end
  
    def article_titles
      a =[]
      
      articles.each do |art|
        a << art.title
      end
      a = a.uniq
      a
    end
  
    def contributing_authors
      a =[]
      Author.all.each do |author|
        count = 0
       
        articles.each do |art|
          if art.author.name == author.name
            count +=1
          end
        end
        
        if count > 2 
          a << author
        end
      end
      a = a.uniq
      a
    end
  end
    
  
  
  
  
  
  
  
  
  
  
