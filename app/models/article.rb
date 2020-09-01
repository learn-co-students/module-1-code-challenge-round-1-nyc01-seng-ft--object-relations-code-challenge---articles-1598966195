# #### Article - done

# X- `Article#initialize(author, magazine, title)` 
# X - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
# X - An article **cannot** change its author, magazine, or title after it is has been initialized.
# X - `Article#title`
# X - Returns the title for that given article
# X- `Article.all`
# X - Returns an array of all Article instances

#### Article - done

# X- `Article#author`
# X  - Returns the author for that given article
# X- `Article#magazine`
# X  - Returns the magazine for that given article



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
