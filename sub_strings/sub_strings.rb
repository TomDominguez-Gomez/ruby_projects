

Dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
	dictionary.map {|d| {d[d] => str.scan(/#{d}/).count}}
end

print substrings("Howdy partner, sit down! How's it going?", Dictionary)