require_relative 'author'
require_relative 'article'
require_relative 'magazine'
require 'pry'



steve = Author.new("steve")
joan = Author.new("joan")

atlantic = Magazine.new("atlantic", "news")
t = Magazine.new("t", "fashion")

t_steve = Article.new(steve, t, "thisthing")
atlantic_joan = Article.new(joan, atlantic, "thisthing")

# p joan.magazine
# p joan.articles
# p joan.find_specialties

# p Magazine.find_by_name("atlantic")
p atlantic.article_titles
