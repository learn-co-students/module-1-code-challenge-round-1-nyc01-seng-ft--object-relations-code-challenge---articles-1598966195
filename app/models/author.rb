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
end
