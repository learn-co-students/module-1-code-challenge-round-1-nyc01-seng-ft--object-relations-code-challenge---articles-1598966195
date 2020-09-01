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
