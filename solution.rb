class Article

    attr_reader :author, :magazine, :title
    # - An article **cannot** change its author, magazine, or title after it is has been initialized.

    @@all = []

    # An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
    def initialize(author, magazine, title)
        # - `Article#title`
        # - `Article#author`
        # - `Article#magazine`
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        # - `Article.all`
        @@all
    end
    
end


class Author
    
    attr_reader :name
    # - A name **cannot** be changed after it is initialized.

    @@all = []

    def initialize(name)
        # - `Author#name`
        @name = name
    @@all << self
    end

    def self.all
        @@all
    end

    def articles
        # - Returns an array of Article instances the author has written
        # p "Hi, #{self.name}, here are all of your articles:"
        Article.all.select {|article| article.author == self}
    end

    def magazines
        # - Returns a **unique** array of Magazine instances for which the author has contributed to
        # p "Hi, #{self.name}, here are all of the magazines you have contributed to:"
        self.articles.map {|article| article.magazine}.uniq
    end

    def magazine_articles(magazine)
        # - Returns a **unique** array of Magazine instances for which the author has contributed to
        # p "Hi, #{self.name}, here are all of the articles you have submitted to #{magazine}:"
        self.articles.select {|article| article.magazine == magazine}.count
    end

    def add_article(magazine, title)
        # - Given a magazine (as Magazine instance) and a title (as a string), 
        # creates a new Article instance and associates it with that author and that magazine.
        # p "#{self.name}, wrote a new article called, #{title}, for #{magazine} magazine."
        Article.new(self, magazine, title)
    end
    
    def topic_areas
        # - Returns a **unique** array of strings with the categories of the 
        # magazines the author has contributed to
        # p "Hi, #{self.name}, here are all of the catagories you have contributed to:"
        self.magazines.map {|article| article.category}.uniq
    end

end

class Magazine

    attr_accessor :name, :category
    #   - The name and category of the magazine **can be** changed after being initialized.

    @@all = []

    #   - A magazine is initialized with a name as a string and a category as a string
    def initialize(name, category)
        # - `Magazine#name`
        # - `Magazine#category`
        @name = name
        @category = category
        @@all << self
    end

    def self.all
        # returns array of magazines
        @@all
    end

    def all_contributions
        # Returns an array of Author instances who have written for this magazine
        # p "Here are all of our contributors, and each of their contributions:"
        Article.all.select {|article| article.magazine == self}.map {|article| article.author}
    end

    def contributors
        # Returns an array of Author instances who have written for this magazine
        # p "Here are all of our contributors:"
        Article.all.select {|article| article.magazine == self}.map {|article| article.author}.uniq
    end

    def self.find_by_name(name)
        # - Given a string of magazine's name, this method returns the first magazine object that matches
        # p "This is the first magazine of that name we could find:"
        self.all.find {|magazine| magazine.name == name}
    end

    def article_titles
        # - Returns an array strings of the titles of all articles written for that magazine
        # p "The articles written for this magazine are:"
        Article.all.select {|article| article.magazine == self}.map {|article| article.title}
    end

    def contributing_authors
        #   - Returns an array of authors who have written more than 2 articles for the magazine
        author = self.all_contributions
        # p "Here are our contributing authors:"
        author.filter {|author| author.magazine_articles(self) > 2}.uniq
    end

end