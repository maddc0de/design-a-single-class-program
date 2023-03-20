class MusicTracker
  def initialize
    @track_list = []
  end

  def listened_to(track)
    fail "No track given." if track.empty?
    fail "#{track} is already in the track list." if @track_list.include? track
    @track_list << track
    "Successfully added '#{track}' in the track list."
  end

  def print_track_list
    fail "Track list is empty." if @track_list.empty?
    @track_list.join(", ")
  end
end