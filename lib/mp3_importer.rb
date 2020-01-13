#parse file names and send file names to song class

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
  Dir.glob("#{@path}/*.mp3").collect{ |file| 
    end
  end
end
  
 
