class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
     # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    @tracks
    # Returns a list of track objects
  end
  
  def search(keyword) 
   @tracks.select {|track| track.matches?(keyword)}
    # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end