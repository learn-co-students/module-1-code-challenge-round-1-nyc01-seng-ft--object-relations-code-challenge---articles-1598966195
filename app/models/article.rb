class Article
    #reader - cannot change
    attr_accessor :article
    attr_reader :name, :author, :magazine, @title
    @@all = []

    def initialize (name, article, author, magazine, title)
        @name = name
        @article = article
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def title
        #Returns the title for that given article
        if title.article == self
            article
        end
    end

    def self.all
        #Returns an array of all Article instances
        @@all
    end

    def author
        #Returns the author for that given article
        Article.all.select {|author| author.article == self}
    end


end
