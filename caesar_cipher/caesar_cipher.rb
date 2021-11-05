require "pry-byebug"

def caesar_cipher(str, shift)

	def shifted(l, s)		
		if l.ord.between?(65,90)
			return (l.ord+s) > 90 ? ((l.ord+s)-26).chr : (l.ord+s).chr  
		elsif l.ord.between?(97,122) 
			return (l.ord+s) > 122 ? ((l.ord+s)-26).chr : (l.ord+s).chr  
		else
			return l
		end
	end

	str.chars.map {|l| shifted(l, shift)}.join()

end

p caesar_cipher("ab cZ", 2)