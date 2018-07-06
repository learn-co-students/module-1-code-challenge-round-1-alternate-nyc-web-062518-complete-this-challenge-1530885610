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
