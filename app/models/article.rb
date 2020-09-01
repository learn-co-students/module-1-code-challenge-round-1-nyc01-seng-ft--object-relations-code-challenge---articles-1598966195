class Article
@@all = []

attr_reader :author, :magazine, :title

    def initialization(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @all
    end

    def self.title
        Article.all.select{|name| Article.name == self }.uniq
    end

    def self.all
        Article.all.map[&:yield]
    end

    def self.author
        Article.author.map[&:yield]
    end

    def self.magazine
        Article.magazine.map[&:yield]
    end

    

end
