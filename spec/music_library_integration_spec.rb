require 'music_library'
require 'track'

describe "musics integration" do
  it"adds tracks to a list" do
    music_library = MusicLibrary.new
    track_1 = Track.new("Led Zeppelin","Stairway to Heaven")
    track_2 = Track.new("Led Zeppelin","Black Dog")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "return a list of tracks based on the keyword" do
    music_library = MusicLibrary.new
    track_1 = Track.new("Led Zeppelin","Stairway to Heaven")
    track_2 = Track.new("Led Zeppelin","Black Dog")
    track_3 = Track.new("Metallica","Whiskey in the Jar")
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.search("Led")).to eq [track_1, track_2]
  end

  it "return empty list when nothing is matched" do
    music_library = MusicLibrary.new
    track_1 = Track.new("Led Zeppelin","Stairway to Heaven")
    track_2 = Track.new("Led Zeppelin","Black Dog")
    track_3 = Track.new("Metallica","Whiskey in the Jar")
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.search("blue")).to eq []
  end
end