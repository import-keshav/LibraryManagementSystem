is_book_issued = "NO"

print("											   ")
print("Enter BookId")
book_id = input()

print("											   ")
print(" Enter Enrollment Number")
enrollment_number = int(input())
print("											   ")


def issue_book(book_content):
	global is_book_issued
	is_book_issued = "YES"
	print("											   ")
	print("Enter Issued date")
	issued_date = str(input())

	print("										   	   ")
	print("Enter Return date")
	return_date = str(input())

	book_content = book_content[:len(book_content)-1]
	book_content.append("NO")
	book_content[3] = "YES"
	book_content.append(issued_date)
	book_content.append(return_date)	
	book_content.append(str(enrollment_number))
	book_content.append("\n")
	book = "  ".join(book_content)
	return book


with open('books.txt', 'r') as books_file:
	books = books_file.readlines()

with open('books.txt', 'w') as books_file:
	for book in books:
		book_content = book.split("  ")

		if book_content[0] == book_id:
			new_book = issue_book(book_content)
			books_file.write(new_book)
			continue
		books_file.write(book)

	if (is_book_issued == "NO"):
		print("										   	   ")
		print("Book can't be issued due to")		
		print("Invalid Book Id / Book Issued Already")
	else:
		print("										   	   ")
		print("********************************************")
		print("Book issued Succesfully to  " + str(enrollment_number))
		print("********************************************")
		print("										   	   ")
