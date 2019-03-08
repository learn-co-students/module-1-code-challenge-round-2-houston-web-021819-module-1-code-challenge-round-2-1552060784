class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end
  def queue_items
     QueueItem.all.select do | queueitem |
    queueitem.movie== self 
  end 
end 
def viewers
  my_viewers= QueueItem.all.select do | queueitem |
    queueitem.movie == self
  end 
my_viewers.map do | queueitem |
  queueitem.viewer
end 

end 

end 

