class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # def name should return name of author
  def name
      @name
  end

  #articles method should return array of article instances for author
  def articles
    Articles.all.select{|article| article.author == self}
  end

  # magazines method should return a unique array of Mags instances author has contributed
  def magazine
    Articles.all.select{|article| article.}
  end
  # add article method is given two args which will create a new article --> come back to this
  def add_article(magazine_instance, title_instance)
    add_article = Article.new(self, magazine_instance, title_instance)
    article.author == self
  end

  # topic areas method returns a unique array of strings of the categories of the mags
    # use to_s method?


end
