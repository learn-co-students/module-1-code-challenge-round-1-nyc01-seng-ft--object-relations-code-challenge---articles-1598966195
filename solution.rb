# Please copy/paste all three classes into this file to submit your solution!


class Article
    attr_reader :author, :magazine, :title

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end
end



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