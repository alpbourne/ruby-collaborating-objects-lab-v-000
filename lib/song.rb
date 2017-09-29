class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song.name = (filename.split(" - ")[1])
    artist = (filename.split(" - ")[0])
    song = self.new
  end

end
