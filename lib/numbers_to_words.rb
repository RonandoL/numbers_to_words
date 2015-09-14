class Fixnum
  define_method(:numbers_to_words) do
    number = self
    number_array = []
    base_numbers = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen"
    }

    tens_numbers = {
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }

    if  (number > 1000) && (number < 10000)
      number_array.push(base_numbers.fetch((number - (number % 1000)) / 1000) + (" thousand"))
      number_array.push(base_numbers.fetch((number % 1000) / 100) + (" hundred and"))
      number_array.push(tens_numbers.fetch((number % 100) - (number % 10)))
      number_array.push(base_numbers.fetch((number % 10)))
    elsif (number > 100) && (number < 1000)
      number_array.push(base_numbers.fetch((number - (number % 100)) / 100) + (" hundred and"))  # gives us the hundreds number
      number_array.push(tens_numbers.fetch((number % 100) - (number % 10)))  # gives us the tens number
      number_array.push(base_numbers.fetch((number % 10)))  # gives us the ones number
    elsif (number > 20) && (number < 100)
      number_array.push(tens_numbers.fetch(number - (number % 10)))
      number_array.push(base_numbers.fetch(number % 10))
    elsif (number < 20)
      number_array.push(base_numbers.fetch(number))
    end
    number_array.join(" ")
  end
end
