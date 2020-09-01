class Article

    # attr - this cannot be changed after initialization
    attr_reader :author, :magazine, :title
    # all
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    # title method returns title for given article - COME BACK TO REVIEW!
    def title
        @title
    end

    def self.all
        @@all
    end

    def author
        Article.all.map{|article| article.author == self}
    end

    def magazine
        Article.all.map{|article| article.magazine == self}
    end

end
