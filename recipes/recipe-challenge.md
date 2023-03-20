# MusicTracker Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

obj = track_list
method = add tracks, see track_list

## 2. Design the Class Interface

```ruby

class MusicTracker
  def initialize
    @track_list = []
  end

  def listened_to(track)
    # throws an error when track is empty
    # throws an error if track is already in the track_list
    # returns a message when track is successfully added to the list

  end

  def print_track_list()
    # Throws an error when track_list is empty
    # Otherwise, returns a list of music listened to
  end

end
```

## 3. Create Examples as Tests

```ruby
# 1
music = MusicTracker.new()
music.listened_to("") => # fails with "No track given."

# 2
music = MusicTracker.new()
music.listened_to("I will survive") 
music.listened_to("I will survive") => # fails with "#{track} is already in the track list."

# 3
music = MusicTracker.new()
music.listened_to("I will survive") => # "successfully added '#{track}' in the track list."

# 4
music = MusicTracker.new()
music.print_track_list() -> # fails with "Track list is empty."

# 5
music = MusicTracker.new()
music.listened_to("I will survive") 
music.print_track_list() => # prints "1. I will survive"

# 6
music = MusicTracker.new()
music.listened_to("I will survive") 
music.listened_to("What a wonderful world") 
music.print_track_list() => # prints "1. I will survive"
                                   # "2. What a wonderful world"
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._