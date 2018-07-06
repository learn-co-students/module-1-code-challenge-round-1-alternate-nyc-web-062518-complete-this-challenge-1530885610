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
