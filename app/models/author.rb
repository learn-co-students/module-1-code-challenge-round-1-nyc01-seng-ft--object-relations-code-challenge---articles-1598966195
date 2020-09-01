class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
      @name
  end

  def articles
    Articles.all.select{|article| article.author == self}
  end

  # come back to this
  def magazine
    Articles.all.select{|article| article.author == self}.map{|magazine| magazine.author == self}.uniq
  end

  # come back to this
  def add_article(magazine_instance, title_instance)
    article_instance = Article.new(self, magazine_instance, title_instance)
  end

  # line of thinking: I'm accessing the magazine method and placing this into a new array.
      #Since I created the topics as strings, I won't need a to_s method, but also magazine
        # method is already unique so I don't think I need to use uniq here again...?
  def topic_areas
    self.magazine.map{|magazine| magazine.category}
  end

end
