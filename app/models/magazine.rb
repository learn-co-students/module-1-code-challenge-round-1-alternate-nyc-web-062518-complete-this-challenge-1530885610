require 'pry'
class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  # + Magazine.all
  def self.all
    @@all
  end
  #   + returns an array of all magazines

  # + Magazine.find_by_name(name)
  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end
  #   + given a string of magazine name, returns the first magazine that matches

  # + Magazine#article_titles
  def article_titles
    article_titles = Article.all.select do |article|
      article.magazine == self
    end
      # binding.pry
    article_titles.map do |article|
      article.article
    end
  end
  #   + returns a list of the titles of all articles written for that magazine

end
