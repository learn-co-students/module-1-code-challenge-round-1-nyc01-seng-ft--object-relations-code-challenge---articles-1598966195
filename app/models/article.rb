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

    def title
        #returns the title for that given article
        # iterate over the articles.
        # pass in an article and return a title
    end

    def author
        #returns the author for that given article
        # iterate over the articles.
        # pass in an article and return an author
    end

    def magazine
        #returns the magazine for that given article
        # iterate over the articles.
        # pass in an article and return a magazine
        # Article.all.map { |magazine| magazine.author}
    end

    def add_article(magazine, title)
        # Given a magazine (as Magazine instance) and a title (as a string), 
        # creates a new Article instance and associates it with that author and that magazine.
    end


end
