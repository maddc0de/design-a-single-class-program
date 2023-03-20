require 'music-tracker'

RSpec.describe MusicTracker do
  context 'fails' do
    it "when no track is given" do
      music = MusicTracker.new()
      expect{ music.listened_to("") }.to raise_error "No track given."
    end

    it "when the track given is already in the track list" do
      music = MusicTracker.new()
      music.listened_to("I will survive")
      expect{ music.listened_to("I will survive") }.to raise_error "I will survive is already in the track list."
    end

    it "when trying to view an empty track list" do
      music = MusicTracker.new()
      expect {music.print_track_list}.to raise_error "Track list is empty."
    end
  end

    it "returns a message when successfully added a track in the track list" do
      music = MusicTracker.new()
      expect(music.listened_to("I will survive")).to eq "Successfully added 'I will survive' in the track list."
    end

    it "prints one track when one track is given" do
      music = MusicTracker.new()
      music.listened_to("I will survive")
      expect(music.print_track_list).to eq "I will survive"
    end

    it "prints two tracks when one track is given" do
      music = MusicTracker.new()
      music.listened_to("I will survive")
      music.listened_to("What a wonderful world") 
      expect(music.print_track_list).to eq "I will survive, What a wonderful world"
    end
end