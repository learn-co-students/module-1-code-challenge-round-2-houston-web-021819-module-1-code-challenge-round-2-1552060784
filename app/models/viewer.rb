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
    QueueItem.all.select {|queueitem| queueitem.viewer == self}
  end

  def queue_movies
    self.queue_items.map {|queueitem| queueitem.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)


  end

  end





# + `Viewer#add_movie_to_queue(movie)`
#  + this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
# + `Viewer#rate_movie(movie, rating)`
#  + given a movie and a rating (a number between 1 and 5),
# this method should assign the rating to the viewer's `QueueItem` for that movie.
# If the movie is not already in the viewer's queue, this method should add a new `QueueItem`
#  with the viewer, movie, and rating. If the movie is already in the queue, this method should not
#  create a new `QueueItem`. -->
