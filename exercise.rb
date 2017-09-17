class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  def self.marklar(str)
   # Move String to array to isolate the words.
    strArray = str.split(" ")
    i = 0
    punc = ""
    # Loop through individual words to determine replacement
    loop do
      if (strArray[i].size > 4)
        # Catch amy puncuations
        if (strArray[i][-1,1].match  /([?!.])/ )
          punc = strArray[i][-1,1]
        end
        if (strArray[i][0] == strArray[i][0].upcase)
          strArray[i] = "Marklar" + punc
        else
        strArray[i] = "marklar" + punc
        end
      end
      i += 1
      break if i == strArray.size
    end
    # Return rejoined string with replaced words
    return strArray.join(" ")
  end

  # self.marklar("Return the sum of all even numbers")

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    i = 0
    fibArray = Array.new
    # Loop through to create Fib sequence array based on nth terms
    loop do
      # Add first two terms to array
      if (i < 2)
        fibArray.push(1)
      else
        # Add remaining terms to array 
        fib = (fibArray[i-2].to_i + fibArray[i-1].to_i )
        fibArray.push(fib)
      end
      i += 1
      break if i == nth
    end
    totFib = 0
    # Loop through array to get total of even numbers
    for f in fibArray do
      if ( f % 2 == 0)
        # puts f
        totFib += f.to_i   
      end
    end
    # Return total of even numbers in Fib sequence
    return totFib
  end
end