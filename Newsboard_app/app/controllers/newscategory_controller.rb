class NewscategoryController < ApplicationController
  require 'simple-rss'
  require 'open-uri'

def index
 # @n1 = tabposition.all(:order => "position") #added for tab position
end
 
  def latestnews_page
  	#url = "http://timesofindia.feedsportal.com/c/33039/f/533965/index.rss"
  	#@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533965/index.rss")
    @rss = SimpleRSS.parse open("http://rss.cnn.com/rss/edition.rss")
    # @rss = SimpleRSS.parse open("http://zeenews.india.com/rss/india-national-news.xml")
  	#p "RSS is  -------- #{@rss.inspect}"
  	#@rss
  		#@rss.items.each do |r| 
		#@headline = r.try(:title) 	
		#end
  end

  def popularnews_page
  	#url =  "http://timesofindia.feedsportal.com/c/33039/f/533972/index.rss"
	@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533972/index.rss")
  end

  def businessnews_page
  	#url = "http://timesofindia.feedsportal.com/c/33039/f/533919/index.rss"
  	@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533919/index.rss")
  end

  def sportsnews_page
  	#url = "http://timesofindia.feedsportal.com/c/33039/f/533921/index.rss"
  	@rss = SimpleRSS.parse open("http://timesofindia.feedsportal.com/c/33039/f/533921/index.rss")
  end
   def description
   #	p "========================#{params[:rss].try(:description)}"
 	 @hd ,@rsss = params[:hl] ,params[:rss]
  end
  #def screenconfig
 #@dropdown_value = params[:d1]
 #{}"==========================================#{@dropdown_value}"

#end
#added for tab position
#def sort
 ##  tabposition.update_all(['position=?', index+1], ['id=?', id])
  #end
  #render :nothing => true
end
