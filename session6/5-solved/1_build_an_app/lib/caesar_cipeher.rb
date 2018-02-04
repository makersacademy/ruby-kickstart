module CaesarCipher

	@nums = (0..9).to_a.map! {|num| num.to_s}
	@lc_letters = ("a".."z").to_a
	@uc_letters = ("A".."Z").to_a


	def encrypt str
		output = []
		str.split("").each do |item|
			[@nums,@lc_letters,@uc_letters].each do |opt|
				if opt.index(item)
					output << opt[(opt.index(item) + 3)% opt.size]
				end
			end
		end
		output.join
	end

	def decrypt str
		output = []
		str.split("").each do |item|
			[@nums,@lc_letters,@uc_letters].each do |opt|
				if opt.index(item)
					output << opt[(opt.index(item) - 3)% opt.size]
				end
			end
		end
		output.join
	end

end

