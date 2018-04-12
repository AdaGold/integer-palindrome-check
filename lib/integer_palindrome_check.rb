# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  return false if number.class != Integer
  return false if number > 0
  return true if number == 0

  length = 1
  j = 10

  k = j - number
  if k < 0
    length += 1
    j *= 10
  end

  m = 2(j / 10)
  ordered_digits_in_num = []

  r = m - num
  if r == 0
    return false
  elsif r > 0

  else

  end
end
