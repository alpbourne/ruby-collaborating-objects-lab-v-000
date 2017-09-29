class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir.glob("#{path}/*.mp3")
    file_list.each do |file|
      file.slice!("#{path}/")
    end
  end

  def import
    self.files
    files.collect do |filename|
      Song.new_by_filename(filename)
    end
  end

end
