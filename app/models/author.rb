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

    def article_count
        self.articles.count
    end

    def find_articles_by_mag(magazine_name) #magazine_name must be object, not string
        self.articles.select {|article| article.magazine == magazine_name}
    end

    def article_count_by_mag(magazine_name)

    end
end
