require 'track'

describe Track do
  it "matches" do
    track = Track.new("Welcome to the jugle", "Guns N' Roses")
    expect( track.matches?("Welcome")).to eq true
  end

  it "not match" do
    track = Track.new("Welcome to the jugle", "Guns N' Roses")
    expect( track.matches?("home")).to eq false
  end
end
