require 'rubygems'  
require 'nokogiri'  
require 'open-uri'  
require 'rss/2.0'

class RssParser  
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def article_urls
    RSS::Parser.parse(open(url), false).items.map{|item| item.link }
  end
end  

class HtmlParser  
  attr_accessor :url, :selector

  def initialize(url, selector)
    @url      = url
    @selector = selector
  end

  def content
    doc = Nokogiri::HTML(open(url))
    html_elements = doc.search(selector)
    html_elements.map { |element| clean_whitespace(element.text) }.join(' ')
  end

  private

    def clean_whitespace(text)
      text.gsub(/\s{2,}|\t|\n/, ' ').strip
    end
end  

# training data samples
economy = HtmlParser.new('http://en.wikipedia.org/wiki/Economy', '.mw-content-ltr')  
sport   = HtmlParser.new('http://en.wikipedia.org/wiki/Sport', '.mw-content-ltr')  
health  = HtmlParser.new('http://en.wikipedia.org/wiki/Health', '.mw-content-ltr')

training_data = {  
  :economy => economy.content,
  :sport => sport.content,
  :health => health.content
}

classifier = Classifier.new(training_data)

results = {  
  :economy => [],
  :sport => [],
  :health => []
}

rss_parser = RssParser.new('http://avusa.feedsportal.com/c/33051/f/534658/index.rss')  
rss_parser.article_urls.each do |article_url|  
  article = HtmlParser.new(article_url, '#article .area > h3, #article .area > p, #article > h3')
  scores = classifier.scores(article.content)
  category_name, score = scores.max_by{ |k,v| v }
  # DEBUG info
  # p "category: #{category_name}, score: #{score}, scores: #{scores}, url: #{article_url}"
  results[category_name] << article_url
end

p results 