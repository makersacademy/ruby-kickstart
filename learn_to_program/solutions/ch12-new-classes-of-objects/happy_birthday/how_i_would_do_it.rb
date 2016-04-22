puts 'Hey, when were you born? (Please use YYYYMMDD format.)'
input = gets.chomp

b_year = input[0..3].to_i
b_month = input[4..5].to_i
b_day = input[6..7].to_i

t = Time.new

t_year = t.year
t_month = t.month
t_day = t.day

age = t_year - b_year

if t_month < b_month || (t_month == b_month && t_day < b_day)
  age -= 1
end

if t_month == b_month && t_day == b_day
  puts 'HAPPY BIRTHDAY!!'
end

age.times { puts 'SPANK!' }
