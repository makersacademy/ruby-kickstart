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
# pathify 'usr' => {'bin' => ['ruby']}                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)

#define the method, which creates a new hash
def pathify(paths=Hash.new)
  # checks if pathis is an array, and seperates the paths by a /
  return paths.map { |path| '/' + path } if paths.is_a? Array

  # recursive step
  #creates a new empty array, to_return
  to_return = []
  #iterates over paths, with parent_path and child_dirs
  paths.each do |parent_path, child_dirs|
# adds a / in front of the parent path
    parent_path = '/' + parent_path         # paths begin with a /
# runs the child path through the pathify method defined above, which adds a / in front of it if it is an array
    child_paths = pathify child_dirs        # convert child directories to paths
# iterates over the elents in the child_path, and joins the child and parent path
    child_paths.each do |child_path|        # join each child path to it's parent path
# puts these in the empty array created earlier
      to_return << (parent_path + child_path)
    end
  end
  #returns the array
  to_return
end
