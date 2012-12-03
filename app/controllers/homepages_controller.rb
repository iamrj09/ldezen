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
	@publication = Publication.all
end
	
def event
	@event = Event.order('date')
end

def calendar
end

end