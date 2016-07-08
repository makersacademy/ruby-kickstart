def grade(num_books, has_read_books)

case 

when num_books <10
	has_read_books==false ? "D" : "C"
when num_books >= 10 && num_books <=20
	has_read_books==false ? "C" : "B"
when num_books >20 
	has_read_books==false ? "B" : "A"
end

end


