class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(file_name.split(" - ")[1])
    song.artist_name = filename.split(" - ")[0]
    artist = song.artist_name
    song
  end

end
