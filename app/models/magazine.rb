# - `Magazine#initialize(name, category)`
#   - A magazine is initialized with a name as a string and a category as a string
#   - The name and category of the magazine **can be** changed after being initialized.
# - `Magazine#name`
#   - Returns the name of this magazine
# - `Magazine#category`
#   - Returns the category of this magazine
# - `Magazine.all`
#   - Returns an array of all Magazine instances


# #### Magazine

# - `Magazine#contributors`
#   - Returns an array of Author instances who have written for this magazine

class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  @@all = []

  def self.all
    @@all
  end


end
