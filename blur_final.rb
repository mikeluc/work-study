class Image

  def initialize(array)

    @array = array
  end

  def output_image
    @array.each do |row|
      puts row * " "
    end
  end


  def transform_pixels

    pixel_coord = []
    @array.each_with_index do |value_of_index, y_value|
      value_of_index.each_with_index do |value_ind_in_array, x_value|
        if value_ind_in_array == 1 
          pixel_coord.push(y_value, x_value)
        end
      end
    end
    

        puts "px coord: #{pixel_coord}"

        pixel_coord.each do |pixel|
          #puts "coord #{pixel}"
            y = pixel_coord[0]
            x = pixel_coord[1]

               puts "y #{y}"
                puts "x #{x}"
            
            up = [y - 1, x] 
            down = [y + 1, x]
            left = [y, x - 1] 
            right = [y, x + 1]

            #puts "#{@array}"
            #@array.each_with_index do |value_of_index, y_value|
            #value_of_index.each_with_index do |value_ind_in_array, x_value|

              #if y == y_value && x == x_value
                puts "y #{y}"
                puts "x #{x}"
               # puts "y_value #{y_value}"
                #puts "x_value #{x_value}"
                
                  @array[y][x + 1] = 1 
                  
                  @array[y][x - 1] = 1
                
                  @array[y + 1][x] = 1

                  
                  @array[y - 1][x] = 1

              
              #end
           # end  
          end
        #end

  end
  def blur(distance)
      
      
  end
end 

image = Image.new([
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
])


image.blur(2)
image.output_image