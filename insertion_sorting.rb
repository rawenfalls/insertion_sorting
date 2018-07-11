input=gets.chomp.strip.scan(/[1-9]+/)
output=[]
output<<input.shift
loop do
  break if input == []
  output.unshift(input.shift)
  for i in 0..output.length
    if output[i+1]!=nil
      if output[i]>output[i+1]
        output[i],output[i+1]=output[i+1],output[i]
      else
        break
      end
    end
  end
end
puts output