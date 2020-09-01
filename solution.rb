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
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def articles
        Article.all.select {|article| article.author == self}
    end

    def magazines
        self.articles.map {|article| article.magazine}.uniq
    end

    def topic_areas
        self.magazines.map {|mag| mag.category}.uniq
    end

    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end

    def article_count
        self.articles.count
    end

    def find_articles_by_mag(magazine_name) #magazine_name must be object, not string
        self.articles.select {|article| article.magazine == magazine_name}
    end

    def article_count_by_mag(magazine_name)

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

    def self.find_by_name(mag_name) # case_sensitive
        Magazine.all.find {|mag| mag.name.include?(mag_name)}
    end

    
    def articles
        Article.all.select {|article| article.magazine == self}
    end

    def article_titles
        self.articles.map {|article| article.title}
    end
    
    def contributors
        self.articles.map {|article| article.author}.uniq
    end
    
    def contributing_authors
        self.author_count.find_all {|author, count| count > 2}

    end

    def author_count
        self.articles.map {|article| article.author}.each_with_object(Hash.new(0)) {|count, author| author[count] += 1}
    end
    
end



