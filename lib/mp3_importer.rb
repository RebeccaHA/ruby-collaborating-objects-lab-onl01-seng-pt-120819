#parse file names and send file names to song class

class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    end
  end

 def import
   files.each{|file_name| Song.new_by_filename(file_name)}
  end
  
 
