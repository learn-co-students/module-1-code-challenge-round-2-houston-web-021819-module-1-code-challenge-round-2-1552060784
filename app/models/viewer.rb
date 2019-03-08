class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username:)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  def queue_items
    q = QueueItem.all.select do |queueitem|
      queueitem.viewer = self
    end
   end

  def movie
   q = QueueItem.all.select do |queueitem|
     queueitem.viewer = self
   end    
   q.map do |queueitem|
    queueitem.movie
   end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(viewer:self, movie: movie)
  end
  
end
