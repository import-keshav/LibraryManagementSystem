is_book_returned = "NO"


print("											   ")
print("Enter BookId")
book_id = input()

def return_book(book_content):
	global is_book_returned
	is_book_returned = "YES"
	book_content = book_content[0:4]
	book_content[3] = "NO"
	book_content.append("\n")
	book = "  ".join(book_content)
	return book

with open('books.txt', 'r') as books_file:
	books = books_file.readlines()

with open('books.txt', 'w') as books_file:
	for book in books:
		book_content = book.split("  ")
		if book_content[0] == book_id:
			new_book = return_book(book_content)
			books_file.write(new_book)
			continue
		books_file.write(book)

	if is_book_returned == "YES":
		print("										   	   ")
		print("********************************************")
		print("Book Returned Succesfully")
		print("********************************************")
		print("										   	   ")
	else:
		print("										   	   ")
		print("Book can't be returned due to")		
		print("Invalid Book Id / Book Returned Already")