class Article
    attr_reader :author, :magazine, :title

# - `Article#initialize(author, magazine, title)`
#   - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
#   - An article **cannot** change its author, magazine, or title after it is has been initialized.


    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
        # - `Article#title`
        # - `Article#author`
        # - `Article#magazine`
    end

# - `Article.all`
#   - Returns an array of all Article instances
    def self.all
        @@all
    end
end
