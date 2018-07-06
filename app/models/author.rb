require 'pry'
class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

 #  Author.all
 def self.all
   @@all
 end
 #   + returns an array of all authors
 # + Author#articles
 def articles
   Article.all.select do |article|
      # binding.pry
      article.author == self
    end
 end
 #   + returns a list of articles the author has written
 # + Author#magazine
 def magazine
  articles = Article.all.select do |article|
     # binding.pry
     article.author == self
   end
   magazines = articles.map do |article|
     article.magazine
     # binding.pry
   end
   magazines
 end
#   + should return a list of magazines for which the author has written

 # + Author#add_article(title, magazine)
 def add_article(title, magazine)
   Article.new(self, title, magazine)
 end
 #   + given a title and a magazine, creates a new article and associates it with that author and that magazine.

 # +  Author#find_specialties
def find_specialties
  magazine.map do |magazine|
    magazine.category
    # binding.pry
  end
end
 #    + returns the categories of the magazines for which the author has written


end
