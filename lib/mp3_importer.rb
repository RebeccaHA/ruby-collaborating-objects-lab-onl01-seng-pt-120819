#parse file names and send file names to song class

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("*.mp3")
    @files.collect do |file_name|
      files << file_name
    end
  end
end
  
 
