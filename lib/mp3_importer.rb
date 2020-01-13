#parse file names and send file names to song class

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
   @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    end
  end

 def import
   self.files.each{|files| Song.new_by_filename(files)}
  end
  
 
