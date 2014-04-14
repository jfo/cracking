def zero(array)

  acc = Marshal.load(Marshal.dump(array.dup))


  columns = []

  array.each_with_index do |row, rindex|
    row.each_with_index do |e, cindex|
      if e == 0
        acc[rindex].map! {|e| e = 0}
        columns << cindex
      end
    end
  end

  acc.map do |row|
    columns.each do |c|
      row[c] = 0
    end
  end
  acc

end


test = [[1,2,0,4,5,6,7],[3,4,6,2,5,2,6],[4,4,7,0,3,4,5],[2,3,5,6,1,7,6]]

test.each {|e| puts e.join(' ')}
puts
zero(test).each {|e| puts e.join(' ')}

