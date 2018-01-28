# This challenge requires that you've completed challenges 7 and 8

# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solution, try to understand the code, then close the file, come back here, and try again to solve it. 

# The Green Thumb Nursery calls you up "hey, remember that list of trees we sent you?"
# "Sure" you reply, fondly reveling in the brillinace of your regular expression that
# parsed it. "We want you to put it in a webpage for us" they tell you.
#
# Given the same inputs as challenge 7, output results in string format like this:
#   <!doctype html>
#   <html>
#     <head>
#       <title>Green Thumb Nursery</title>
#     </head>
#     <body>
#       <h1>Catalog</h1>
#       <table>
#         <tr>
#           <td>Type of tree</td>
#           <td>Size of the tree</td>
#           <td>Price of the tree</td>
#         </tr>
#
#         <!-- Put records here -->
#         <tr>
#           <td>American Redbud Tree</td>
#           <td>1 to 2 feet</td>
#           <td>$5.95</td>
#         </tr>
#         <!-- etc -->
#       </table>
#     </body>
#   </html>
require_relative '7_regex'
require 'sinatra'

def trees_to_html(trees)
	html = "<!doctype html>
  \t<html>
  \t\t<head>
  \t\t\t<title>Green Thumb Nursery</title>
  \t\t</head>
  \t\t<body>
  \t\t\t<h1>Catalog</h1>
  \t\t\t<table>
  \t\t\t\t<tr>
	\t\t\t\t\t<td>Type of tree</td>
	\t\t\t\t\t<td>Size of the tree</td>
	\t\t\t\t\t<td>Price of the tree</td>
  \t\t\t\t</tr>"
	tree_parser(trees).each do |row|
		html << "\n\t\t\t\t<tr>
	\t\t\t\t\t<td>#{row[0]}</td>
	\t\t\t\t\t<td>#{row[1]}</td>
	\t\t\t\t\t<td>#{row[2]}</td>
\t\t\t\t</tr> "
				end
	html << "\n\t\t\t</table>
\t\t</body>
\t</html>"
	puts html
	html
end
