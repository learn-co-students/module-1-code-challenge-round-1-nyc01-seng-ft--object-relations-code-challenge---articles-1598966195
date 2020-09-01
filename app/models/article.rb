#### Article
##  ** (BRIDGE)


# - `Article#initialize(author, magazine, title)`
# [V]
#   - An article is initialized with 
#     -- an author as an Author object,
#     -- a magazine as a Magazine object, 
#     -- and title as a string.

# [V]
#   - An article **cannot** change its author, magazine, or title
#     -- after it is has been initialized.
# #  **  (READERS) // lol haha , articles are readers xD


# - `Article#title`
#   - Returns the title for that given article

# - `Article.all`
#   - Returns an array of all Article instances
  



# #### Article

# - `Article#author`
#   - Returns the author for that given article

# - `Article#magazine`
#   - Returns the magazine for that given article




class Article
      attr_reader :author, :magazine, :title
      @@all = [ ]

      def  
         initialize(author, magazine, title)
         @author   = author
         @magazine = magazine
         @title    = title
      end
      def self.all
          @@all    end


    #   def end

    #   def end 
    


end
