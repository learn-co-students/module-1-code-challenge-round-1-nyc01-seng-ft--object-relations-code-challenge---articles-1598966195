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

  def contributors
    Article.all.select { |contributor| 
      if contributor.magazine == self 
        contributor.author
      end
    }
  end

  def self.find_by_name(name)
    self.all.find { |n| n == name}
  end

  def article_titles
    Article.all.map { |art_title| 
    if art_title.magazine == self
    art_title.title
    end 
  }
  end

  def contributing_authors #not working, can't figure out how to check if it appears more than once
    self.contributors.each do |auth| 
      if auth > 2
      auth
      end 
    end
  end

end
