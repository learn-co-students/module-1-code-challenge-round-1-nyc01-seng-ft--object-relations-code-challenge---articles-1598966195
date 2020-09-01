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
        self.author_count.find_all {|author, count| count > 2}

    end

    def author_count
        self.articles.map {|article| article.author}.each_with_object(Hash.new(0)) {|count, author| author[count] += 1}
    end
    
end
