class Article

  attr_accessor :article, :author, :magazine

@@all = []

  def initialize(author, magazine, article)
    @author = author
    @article = article
    @magazine = magazine
    @@all << self
  end

 #  Article.all
 def self.all
   @@all
 end

 # + Article#author
 def author
   @author
 end
#could be done with attrs

# + Article#magazine
def magazine
  @magazine
end


end
