require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
m1 = Movie.new(title:"Red")
v1 = Viewer.new(username:"dude28")
q1 = QueueItem.new(viewer: v1,movie: m1, )

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
