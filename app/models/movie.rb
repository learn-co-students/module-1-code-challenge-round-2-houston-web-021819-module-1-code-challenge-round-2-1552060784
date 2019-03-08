class Movie
  attr_accessor :title

  @@all = []

  def initialize(title:)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def viewers
    q = QueueItem.all.select do |queueitem|
      queueitem.movie = self
    end    
    q.map do |queueitem|
     queueitem.viewer
    end
   end
   def queue_items
    q = QueueItem.all.select do |queueitem|
      queueitem.movie = self
    end
   end

end
