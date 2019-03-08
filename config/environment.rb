require 'pry'
require 'bundler/setup'
Bundler.require
require_rel '../app'


view1 = Viewer.new("Adam")
view2 = Viewer.new("Jojo")
view3 = Viewer.new("Roro")

mov1 = Movie.new("Jaws")
mov2 = Movie.new("Binge")
mov3 = Movie.new("April")

que1 = QueueItem.new(view1, mov1, "4")
que2 = QueueItem.new(view2, mov2, "5")
que3 = QueueItem.new(view3, mov3, "2")



binding.pry
