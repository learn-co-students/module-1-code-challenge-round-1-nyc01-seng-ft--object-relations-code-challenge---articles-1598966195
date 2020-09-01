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
    Article.all.select{ |variable| variable.author if variable.magazine == self}
  end

  def self.find_by_name(magazine_name)
    self.all.find{ |variable| variable.name == magazine_name }
  end

  def article_titles
    Article.all.find_all{ |variable| variable.magazine == self}.map{ |variable| variable.title }
  end


  def contributing_authors
    best = Article.all.select{ |variable| variable.magazine == self }.map{ |variable| variable.author.name}
    most = best[0]
    num = 0
    i = 0
    while i > best.uniq.count do
      if best.count(best[i]) >= num
        most = best[i]
        num = best.count(best[i])
      end
    end
    i+=1
    most
  end
end
