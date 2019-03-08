require_relative '../config/environment.rb'
# require './Viewer.rb'
# require './Movie.rb'
# require ''
def reload
  load 'config/environment.rb'
end
prisonbreak = Movie.new("Prisonbreak")
tkimana = Viewer.new("Tkimana")
queueitem1 = QueueItem.new(prisonbreak,tkimana)

binding.pry
0 