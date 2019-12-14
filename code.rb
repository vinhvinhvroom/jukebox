class Jukebox
  attr_reader :playlist

  PLAYLIST = [
    "Hello - Lionel Ritchie",
    "Kokomo - The Beach Boys",
    "Girl You Know It’s True - Milli Vanilli",
    "Agadoo - Black Lace",
    "Down Under - Men at Work",
    "Nothing's Gonna Stop Us Now - Starship",
    "Get Outta My Dreams, Get Into My Car - Billy Ocean",
    "I Just Called To Say I Love You - Stevie Wonder",
    "Hangin' Tough - New Kids on the Block",
    "We Built This City - Starship",
    "Wake Me Up Before You Go Go - Wham!",
    "We Didn't Start The Fire - Billy Joel",
    "I Wanna Dance With Somebody - Whitney Houston",
    "U Can't Touch This - MC Hammer"
  ]

  def initialize(requested_playlist)
    @playlist = []
    requested_playlist.each do |song|
      if PLAYLIST.include?(song)
        @playlist.push(song)
      end
    end
  end

  def shuffle_songs!
    @playlist.shuffle
  end

  def play!
    @playlist.shift
  end

  def add_track(new_track)
    if PLAYLIST.include?(new_track)
      @playlist.push(new_track)
    end
    PLAYLIST.include?(new_track)
  end

end

# TEST

user_playlist = ["Wake Me Up Before You Go Go - Wham!","Hello - Lionel Ritchie", "We Built This City - Starship","U Can't Touch This - MC Hammer", "Pneuma - Tool", "Paranoid Android -Radiohead"]

juke = Jukebox.new(user_playlist)
# puts juke.shuffle_songs!
# puts juke.play!
# puts juke.playlist
puts juke.add_track("Blackbird - The Beatles")
