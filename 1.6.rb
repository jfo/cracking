

def print_image(image)
  image.each do |e|
    puts e.join(' ')
  end
end


def list_rotate(image)
  acc = []
  image[0].length.times { acc << [] }

  (0...image[0].length).to_a.each do |i|
    image.reverse.each do |row|
      acc[i] << row[i]
    end
  end

  acc

end


image = [[1,1,5,1],
         [2,2,2,2],
         [3,5,'.',3],
         ['d',4,4,4]]

print_image(image)
puts
print_image(list_rotate(image))

