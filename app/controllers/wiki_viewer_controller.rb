require 'open-uri'
require 'nokogiri'
class WikiViewerController < ApplicationController
  def home
  end
  
  def source

	@src = "hello"
	link = "http://"+params[:lang]+"."+params[:wiki]+"."+params[:title]+"?action=render"	
	html = open(link)
	puts html
	s = Nokogiri::HTML(html.read)
	s.encoding = 'UTF-8'
	@src = s.to_s
	@src.gsub!(/<!DOCTYPE(...)*>/,'')
	@src.gsub!('<html>','')
	@src.gsub!('</html>','')
	@src.gsub!('<body>','')
	@src.gsub!('</body>','')
	path = root_path+'/source/'
	@src.gsub!('//'+params[:lang]+"."+params[:wiki]+".org/wiki/", '/source/'+params[:lang]+"/"+params[:wiki]+"/org/wiki/")	
  end
  
  def search
	link = params[:q].split('.')
	lang = link[0]
	wiki = link[1]
	title = link[2]
	redirect_to :action => 'source', :lang => lang, :wiki => wiki, :title => title
	#link = "http://en.wikisource.org/wiki/"+params[:q]+"?action=render"
	#link = "https://en.wikisource.org/w/index.php?search="+params[:q]
	#@search = (Nokogiri::HTML(open(link))).to_s
	#@search.gsub!('//en.wikisource.org/wiki/', '/source/')
  end
  
end