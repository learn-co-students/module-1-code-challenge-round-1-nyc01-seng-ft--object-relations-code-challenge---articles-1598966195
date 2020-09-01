class Article
    #reader - cannot change
    attr_reader :name, :author, :magazine, @title

    def initialize (name, author, magazine, title)
        @name = name
        @author = author
        @magazine = magazine
        @title = title
    end

end
