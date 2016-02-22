require 'pry'
def starts_with_a_vowel?(word)
	return true if word.match(/^[aeiouAEIOU]/)
	false
end 

def words_starting_with_un_and_ending_with_ing(text)
	text_array = Array.new
	text_split = text.split
	text_split.each do |word|
		text_array << word if word.match(/^un/) && word.match(/ing$/)
	end
	text_array
end

def words_five_letters_long(text)
	text_array = Array.new
	text_split = text.split
	text_split.each do |word|
		text_array << word if word.match(/^[a-zA-Z]{5}$/)
	end
	text_array
end

def first_word_capitalized_and_ends_with_punctuation?(text)
	return true if text.match(/^[A-Z]/) && text.match(/[.!?,"']$/)
	false
end

def valid_phone_number?(phone)
	phone_array = phone.scan(/[0-9]/)
	return true if phone_array.length == 10
	false
end
