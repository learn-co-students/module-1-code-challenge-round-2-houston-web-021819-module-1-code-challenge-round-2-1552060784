class Viewer
  attr_accessor :username 

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  def queue_items
    QueueItem.all.select do |queueitem |
      queueitem.viewer == self 
    end 
  end 
      def queue_movies
   self.queue_items.map do |queueitem|
          queueitem.movie
  end 
  end
end      
 
  