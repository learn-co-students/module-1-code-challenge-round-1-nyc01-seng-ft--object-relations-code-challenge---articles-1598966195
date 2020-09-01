### Author


# [V]
# - `Author#initialize(name)`
#   - An author is initialized with a name, as a string.
#   - A name **cannot** be changed after it is initialized.
# #  **  (READERS)

# - `Author#name`
#   - Returns the name of the author


# #### Author

# - `Author#articles`
#   - Returns an array of Article instances the author has written
# - `Author#magazines`
#   - Returns a **unique** array of Magazine instances for which the author has contributed to
  
  

  
  class Author
        attr_reader   :name
        #attr_accessor :articles

        #@@articles = [ ]

        @@all = [ ]


        def initialize(name) #, articles=[ nil ])
            @name = name.to_s

            #@@articles << articles
            @@all      << self 
        end
        def self.all
            @@all    end

        # def articles.all
        #     @@articles    end


        def  self.articles
             all.map { |author| article.author == self.name }  end 


        


end
