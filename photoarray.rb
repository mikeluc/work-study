
class Image

  def initialize (array) #initialize array 
    @array = array #set up instance @var
    @string = ""
  end

  def showImage #output function
    @array.each do |i| #
      i.each do |o|
        @string += o.to_s
      end
      puts @string
      @string = ""
    end

  end



end

#


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])


image.showImage

@string = ""

@string = "00000100"

@string
#newArray = [0, 0, 0,0]


#x = " "

#newArray.each do |i|
  #x += i.to_s
#end



#puts x