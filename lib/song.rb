class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(filename)
    song_name = (filename.split(" - ")[1])
    artist_name = (filename.split(" - ")[0])
    song.artist_name = artist
    song = self.new(song_name)
    song
  end

end
