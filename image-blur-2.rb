class Image
  def initialize(array)
    @array = array
    @new_array = ""
  
    @summary = [ ]
    @pixel_location = []
    @up = []
    @down = []
    @array_copy_second = []
    @array_copy_edit = ""

    @y = 0
    @x = 0

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
    roated_array = []
    @array.each do |i|  
      roated_array = i.rotate(2)  
      puts "#{roated_array}"
    end    
  end

  def get_pixel_points
    pixel_coord = []
    @array.each_with_index do |value_of_index, y_value|
      value_of_index.each_with_index do |value_ind_in_array, x_value|
        if value_ind_in_array == 1 

          pixel_coord.push(y_value, x_value)
        end
      end
    end
    return pixel_coord
  end


  def transform_pixel_points(pixel_location_array) #x,y
    one_loc = pixel_location_array

    @y = one_loc[0]
    @x = one_loc[1]

    @up = [@y - 1, @x] #error on this line ask mentor whats the problem 
    @down = [@y + 1, @x]
    left = [@y, @x - 1] #values are key to solving image blur
    right = [@y, @x + 1]
    @array.each_with_index do |value_of_row, y_value| #row
      value_of_row.each_with_index do |value_of_colomn, x_value|#column
        [@up, @down, left, right].each do |point|
          if point[0] == y_value && point[1] == x_value
            @array[point[0]][point[1]] = 1
          end
        end       
      end 
    end
  end


  #FIX THE LOOP SO THAT IT FUNCTIOSN FOR EACH ITERATION
  def transform 
   
    @pixel_location = get_pixel_points 
    puts "px loc : #{@pixel_location}"
    
    while @pixel_location.size != 0 
      transform_pixel_points(@pixel_location)
      @pixel_location.shift
      @pixel_location.shift
    end
  end

  def blur(distance)
    
    
  end
end

image = Image.new([
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0]
])


#image.summary
# would print [0,3]

#image.rotate

image.output_image
image.transform
puts " -----------------------"
#image.blur(2)

image.output_image

#image.output_image
# 0100
# 0001
# 0001
# 0000