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
    QueueItem.all.select {|queueitem| queueitem.movie == self}
  end

  def viewers
    self.queue_items.map {|que| que.viewer}
  end

  def average_rating
    var = self.queue_items.map {|queueitem| queueitem.rating}
    average = var.inject(0){|sum,x| sum + x } / var.length
    average
    end

end


# `Movie.all`
#   + returns an array of all `Movie`
# + `Movie#queue_items`
#   + returns an array of all the `QueueItem` instances that contain this movie
# + `Movie#viewers`
#   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
