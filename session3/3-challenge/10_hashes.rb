# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify { 'usr' => {'bin' => ['ruby']} }                                                      # => ['/usr/bin/ruby']
# pathify { 'usr' => {'bin' => ['ruby', 'perl'] } }                                              # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify { 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] } }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify { 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)

def pathify(hash,result=[],current_directory="")
	hash.each do |key,value|
		current_directory << "/#{key}"
		if value.is_a?(Hash)
			pathify(value,result,current_directory)
		elsif value.is_a?(Array)
			value.each { |file| result.push "#{current_directory}/#{file}" }
		end
		current_directory = current_directory.split('/')
		index = current_directory.rindex(key)
		index > 0 ? current_directory = current_directory[0..index-1] : current_directory = []
		current_directory = current_directory.join('/')
	end
	result
end

#when rewinding the current directory, what if there is another key with the same name as the one we're searching for
#can each key have a unique identifier when it is put into the current directory variable?
