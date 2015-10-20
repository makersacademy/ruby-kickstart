# LEARNING TO PROGRAM WITH CHRIS PINE, 10.5 ex 1
################################################

def english_number(number)
  onesplace = %w(one two three four five six seven eight nine)
  twosplace = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

  num_string = ''
  left = number

  count = proc do |name, amount|
    write = left / amount
    left -= write * amount
    if write > 0
      num_string += "#{english_number(write)} #{name}"
      num_string += ' ' if left > 0
    end
  end

  if number < 0
    return 'Please enter a number that isn\'t negative'
  elsif number == 0
    return 'zero'
  end

  count.call('quindecillion',       10**48)
  count.call('quattuordecillion',   10**45)
  count.call('tredecillion',        10**42)
  count.call('duodecillion',        10**39)
  count.call('undecillion',         10**36)
  count.call('decillion',           10**33)
  count.call('nonillion',           10**30)
  count.call('octillion',           10**27)
  count.call('septillion',          10**24)
  count.call('sextillion',          10**21)
  count.call('quintillion',         10**18)
  count.call('quadrillion',         10**15)
  count.call('trillion',            10**12)
  count.call('billion',             10**9)
  count.call('million',             10**6)
  count.call('thousand',            10**3)
  count.call('hundred',             10**2)

  #### TENS #####
  write = left / 10
  left -= write * 10

  if write > 0
    if write == 1 && left > 0
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += twosplace[write - 1]
    end
    num_string += '-' if left > 0
  end

  #### ONES #####
  write = left
  left = 0
  num_string += onesplace[write - 1] if write > 0

  #### RETURN RESULT #####
  num_string
end
