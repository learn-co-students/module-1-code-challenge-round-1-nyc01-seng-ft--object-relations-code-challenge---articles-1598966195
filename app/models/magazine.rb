class Magazine

  attr_accessor :name, :category, :article

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
    Article.all.select { |author| author.magazine == self}

  end




end
