class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def self.article
    Author.article.all.map[&:yield]
  end

  def self.name(name)
    Author.all.select{|name| Author.name == self }
  end

  def self.magazine
    Author.magazine.all.map[&:yield].uniq
  end

  def self.magazine_contributor
    Author.magazine.all.select {|name| Author.name if Author.magazine }.uniq
  end

  def self.add_article(magazine, title)
    {Author.magazine.title.}.new

    def self.topic_areas
 #     if magazine_category
 #       Magazine.all.select {|categ| categ == self }
       end
     
    end
  end

end
