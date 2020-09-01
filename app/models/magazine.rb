class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @all
  end

  def magazine_name
    
  end

  def magazine_category
   Magazine.all.select {|category| Magazine.category == self }
  end

  def magazine.all
  Magazine.all.map[&:yield]
  end

  def self.find_by_name
    Self.all.sort {|name| if name = do 
      puts name }  #find?
  end

  def self.article_titles
    magazine.all = @@all
    {|article| if Article_magazine = Article.magazine do 
      Article.magazine += magazine.all 
    elseif puts "#{magazine.all}"}
  end

  def self.contributing_articles

  end

end
