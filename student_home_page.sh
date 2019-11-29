echo "                                             "
echo "Enter Your Id"
echo "                                             "

read student_id

echo "                                             "
echo "Press Following Keys for Following Operations"
echo "                                             "
echo "1)	Search for a Book"
echo "2)    Check Current Issued Books"
echo "											   "

read operation_number

if [ $operation_number -eq 1 ]
then
	echo "                                             "
	echo "Enter BookId / Book Name / Author Name"
	echo "                                             "

	read search_query

	echo "                                             "
	echo " *****************  Books *******************"
	grep  $search_query books.txt
	echo "                                             "
elif [ $operation_number -eq 2 ]
then
	echo "                                             "
	echo " ************  Books Issued by $student_id ***************"
	grep  $student_id books.txt
	echo "                                             "
fi
