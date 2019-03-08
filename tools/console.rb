require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

movie1 = Movie.new("Remember the Titans")
movie2 = Movie.new("Happy Feet")
movie3 = Movie.new("How to Train Your Dragon")

username1 = Viewer.new("TomHansen")

queue_item1 = QueueItem.new(username1, movie1, 5)
queue_item2 = QueueItem.new(username1, movie2, 3)
queue_item3 = QueueItem.new(username1, movie3, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
