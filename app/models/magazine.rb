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
   Magazine.all.select {|categ| categ == self }
  end

  def magazine.all
  Magazine.all.map{&:yield}
  end

end
