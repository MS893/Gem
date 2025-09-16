def is_multiple_of_3_or_5?(number)  
  if (number % 3 == 0) || (number % 5 == 0)
    return true
  else
    return false
  end
end

def sum_of_3_or_5_multiples(final_number)

  final_sum = 0

  for i in (0..final_number-1)
    current_number = i
    if is_multiple_of_3_or_5?(current_number)
      final_sum += current_number
    end
  end

  return final_sum #on retourne la variable qui contient la somme du tout

end

puts sum_of_3_or_5_multiples(11) #=> 33
puts sum_of_3_or_5_multiples(10) #=> 23