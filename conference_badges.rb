def badge_maker(name)
  return "Hello, my name is #{name}."
end 

speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
rooms = [1,2,3,4,5,6,7]

def batch_badge_creator(speakers)
  messages = []
  speakers.each do |x| 
    messages.push(badge_maker(x))
  end 
  messages
end

def assign_rooms(attendees)
  attendees.each_with_index.map do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
end

def printer(speakers, rooms)
  batch_badge_creator(speakers).each do |x|
    puts x 
  end 
  
  assign_rooms(speakers,rooms).each do |x|
    puts x
  end 
  
end
    