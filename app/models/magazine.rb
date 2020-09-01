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



end
