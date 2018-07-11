input=gets.chomp.strip.scan(/[1-9]+/)
for i in 1..input.length-1
  if input[i]<input[i-1]
    for e in 0..i
      input[i-e],input[i-1-e]=input[i-1-e],input[i-e]
      break if input[i-1-e]>input[i-2-e] or i-2-e<0
    end
  end
end
puts input.join(" ")