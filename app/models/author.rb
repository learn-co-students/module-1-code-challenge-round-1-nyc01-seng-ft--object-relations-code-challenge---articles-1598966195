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

  # topic areas method returns a unique array of strings of the categories of the mags
      # use to_s method?
  def topic_areas
    self.magazine.map{|magazine| magazine.category}.uniq.to_s
  end

end
