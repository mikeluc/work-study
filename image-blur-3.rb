#image-blur-3

class Image

  def initialize(array)

    @array = array

    @string_array = ""
    
  end

  def output_image
    @array.each do |i|
      i.each do |o|
        @string_array += o.to_s     
      end
      puts @string_array
      @string_array = ""
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

   def transform(distance)

   distance.times do 
      @pixel_location = get_pixel_points 
      puts "px loc : #{@pixel_location}"
      
      while @pixel_location.size != 0 
        transform_pixel_points(@pixel_location)
        @pixel_location.shift
        @pixel_location.shift
      end
    end
  end

end



image = Image.new([
  [0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0],
  [1, 0, 0, 0, 0]
])


image.output_image
image.transform(2)
image.output_image



