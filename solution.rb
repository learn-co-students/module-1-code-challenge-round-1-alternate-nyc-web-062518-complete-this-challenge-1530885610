# Please copy/paste all three classes into this file to submit your solution!
class Author
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(title, magazine)
    Article.new(title, self, magazine)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map{|article| article.magazine}.uniq
  end

  def find_specialties
    #no need for .uniq because i am mapping magazines method above
    magazines.map{|magazine| magazine.category}
  end

end


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


class Magazine
  attr_accessor :name, :category, :author

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    #map through array of magazine articles for correct magazine
    #article.title

  end

end
