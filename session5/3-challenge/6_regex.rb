# We want to find out how many times the word "bar" appears in some text.
# Have the method below return the right regex:

def bar_regex
  /\bbar\b|\bBar\b/ #Better example is /\b[bB]ar\b/
end
