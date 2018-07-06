class Article
  attr_reader :author, :magazine, :title

  @@all = []
  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
    @@all << self
  end

  def self.all
    @@all
  end

  def find_article
    Article.all.select do |article|
      article == self
    end
  end

  def author
    #pull author instance from find article method
  end

end
