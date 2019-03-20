# helper method to get the count of digits in the integer input
def get_digit_count(x)
  i = 1
  while x >= 10
      i += 1
      x /= 10
  end
  return i
end


# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# The approach below compares one digit at a time.
# Time complexity: O(k), where k is the number of digits in the input parameter number.
#                  or O(lg (number*10)), where lg is log to the base 10
# Space complexity: O(1) since the auxiliary storage used does not change based on input
# An alternative approach, is to reverse the number and save it separately and
# compare it with the input. If they are equal, then the number is a palindrome.
# The alternative approach uses O(k) space, where k is the number of digits in the input parameter number.
def is_palindrome(number)
  return false if number == nil || number < 0

  # figure out the number of 0s in divisor
  div = 1
  digits = 1
  while (number / div) >= 10
    div *= 10
    digits += 1
  end

  while number > 0
    left = number / div # get the left most digit
    right = number % 10 # get the right most digit
    if left != right # compare the left most digit with the right most digit
      return false
    end

    number = (number % div) # remove one digit from the left
    number = number / 10 # remove one digit from the right
    div /= 100 # remove two digits from the divisor to compensate for left and right digits
    digits -= 2
    current_digits = get_digit_count(number)
    if current_digits < digits
        while current_digits < digits
            if number % 10 != 0
                return false
            end
            number = number / 10
            div /= 100
            digits -= 2
        end
    end
  end
  return true
end

