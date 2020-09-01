class Magazine
  attr_accessor :name, :category

  # class variable
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end


end
