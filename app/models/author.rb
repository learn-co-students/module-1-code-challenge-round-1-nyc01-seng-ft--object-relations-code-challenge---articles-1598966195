class Author

  attr_reader :name

  def initialize(name)
    @name = name
  
  end

  def articles
    self.all.map {|article| article.name}
  end


end
