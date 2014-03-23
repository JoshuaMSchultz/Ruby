line_count = 0
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
text_nospace = text.gsub(/\s+/,"").length
words = text.split.length
sentences = text.split(/\.|\?|\!/).length
paragraphs = text.split(/\n\n/).length

stopword = %w{the a by on for of are with just but and to the my I has some in}
keywords = text.split.select {|word| !stopword.include?(word)}



puts <<EOS
#{line_count} lines
#{text.length} characters
#{text_nospace} without spaces
with #{words} words being in the document
These words make up #{sentences} sentences
Sentences are assembled into #{paragraphs} paragraphs
This gives us #{sentences/paragraphs} sentences per paragraph and
#{words/sentences} words per sentence!
#{keywords.length} keywords
EOS