# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# you will be given a file name
# inside the file will be a series of numbers
# find the largest number on each line
# return their sum
#
# EXAMPLE
#     file: nums.txt
#      406 217 799 116 45 651 808 780
#      205 919 474 567 712
#      776 170 681 86 822 9 100 540 812
#      602 117 181 169 876 336
#      434 165 725 187 974 48
#
# line_sums('nums.txt')   # =>   808 + 919 + 822 + 876 + 974   # =>   4399

def line_sums(file_name)
sum = 0
  File.foreach file_name do |line|
    sum += line.split.map{|elem| elem.to_i}.sort.pop
  end
sum
end
