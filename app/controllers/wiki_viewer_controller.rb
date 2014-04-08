require 'open-uri'
class WikiViewerController < ApplicationController
  def home
  end
  
  def source
	link = "http://en.wikisource.org/wiki/"+params[:q]+"?action=render"
	@src = Nokogiri::HTML(open(link))
  end
  
  def search
	link = "http://en.wikisource.org/wiki/"+params[:q]+"?action=render"
	@s = (Nokogiri::HTML(open(link))).to_s
	@s.gsub!('//en.wikisource.org/wiki/', '../source/')
  end
  
end