class Magazine
    attr_accessor :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(mag_name) # case_sensitive
        Magazine.all.find {|mag| mag.name.include?(mag_name)}
    end

    
    def articles
        Article.all.select {|article| article.magazine == self}
    end

    def article_titles
        self.articles.map {|article| article.title}
    end
    
    def contributors
        self.articles.map {|article| article.author}.uniq
    end
    
    def contributing_authors

    end

    def author_count
        
    end
    
end
