class Image
  def initialize(array)
    @array = array
    @new_array = ""
    # TODO A: instead of using "@string", store the strings in an array "@new_array" and print the same thing as before
    @summary = [ ]
  end

  def output_image
    @array.each do |i|
      i.each do |o|
        @new_array += o.to_s
        
      end
      puts @new_array
      @new_array = ""

    end

    
  end

  def summary
    # TODO B: implement a method that returns the number of zeroes and number of 
    counter_zero = 0
    counter_one = 0
    
    @array.each do |i|
      i.each do |o|
        if o === 0
          counter_zero += 1

        elsif o == 1
          counter_one += 1
        else

        end
      end

    end
      
      puts "[#{counter_zero}, #{counter_one}]"
       
  end

  def rotate
    # TODO C: implement rotate, a method that changes the order of the array by 1.
    roated_array = []

    @array.each do |i|
      
      roated_array = i.rotate(2)  
      puts "#{roated_array}"
    end
      
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])
image.output_image

image.summary
# would print [0,3]

image.rotate

#image.output_image
# 0100
# 0001
# 0001
# 0000
