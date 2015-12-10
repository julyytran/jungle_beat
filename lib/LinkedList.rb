require_relative 'Node'

class LinkedList

  attr_accessor :head

  def initialize(beats) #can be multiple beats
    beat_list = beats.split #split multiple beats into array of individual beats #Is this allowed?
    @head = Node.new(beat_list.shift) #first beat is data of head
    beat_list.each do |beat| #for each following beat, set the current tail's link to be a node with data of that beat, making that node the new tail
      tail.link = Node.new(beat)
    end
  end

  def tail #returns the node that is the tail
    current_node = @head
    while
      current_node.link != nil
      current_node = current_node.link
    end
    current_node
  end

  def all
    beats = [] #make empty array to hold beats
    current_node = @head #hold head in local variable
    beats << current_node.data #Add the data of the head to the beats array
    while current_node.link != nil #while the current node has a link to another node AKA is NOT the tail
      current_node = current_node.link #the current node is now the following node
      beats << current_node.data #the data in the current node is appended to the beat array
    end
    beats.join(' ') #the beats array is joined on the spaces to return a string of all the beats
  end

  def count
    current_node = @head
    count = 1
    while current_node.link !=nil
      current_node = current_node.link
      count += 1
    end
    count
  end

  def append(beats)
    beat_list = beats.split(" ")
    beat_list.each do |beat|
    tail.link = Node.new(beat)
    end
  end

  def pop
  #pop
  end

  def includes?(value)
    current_node = @head
    while current_node != nil
      if current_node.data == value
        return true
      else current_node = current_node.link
      end
    end
  end

  def prepend(beats)
    beat_list = beats.split(" ")
    beat_list.each do |beat|
    @head = Node.new(beat, @head)
    end
  end

  def insert(beat, position)
    #insert
  end

  def find(start_position, number_returned)
    beat_list = all.split(" ")
    found_beats = beat_list[(start_position)..(start_position + number_returned)]
    found_beats.join(" ")
  end

end
