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
    Self.all.sort {|name| if name.first[&:yield] }  #find?
  end

  def self.article_titles
    Article_magazine = 0
    {|article| if Article_magazine == Article.magazine do 
      Article.magazine += magazine.all }
  end

end
