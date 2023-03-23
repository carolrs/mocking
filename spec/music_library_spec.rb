require 'music_library'

describe MusicLibrary do
  it"adds tracks to a list and return all" do
    music_library = MusicLibrary.new
    track_1 = "be"
    track_2 = "ba"
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "return a list of tracks based on the keyword" do
    music_library = MusicLibrary.new
    track_1 = FakeMatchTrue.new
    track_2 = FakeMatchTrue.new
    track_3 = FakeMatchFalse.new
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.search("Led")).to eq [track_1, track_2]
  end

  it "return a list of tracks based on the keyword" do
    music_library = MusicLibrary.new
    track_1 = FakeMatchFalse.new
    track_2 = FakeMatchFalse.new
    track_3 = FakeMatchFalse.new
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.search("Led")).to eq []
  end
end

class FakeMatchTrue
  def matches?(keyword) 
    true
  end
end

class FakeMatchFalse
  def matches?(keyword) 
    false
  end
end