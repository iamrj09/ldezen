class HomepagesController < ApplicationController

def index
end

def about
end

def collection
	@collections = Collection.order('name')
end

def exhibition
end

def contact
end

def publication
end
	
end