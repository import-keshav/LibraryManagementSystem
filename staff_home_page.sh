x=1
while [ $x -eq 1 ]	
do
	echo "                                             "
	echo "Press Following Keys for Following Operations"
	echo "                                             "
	echo "1)    Search for a Book"
	echo "2)    Issue a Book"
	echo "3)    Return a Book"
	echo "4)    Display Book Details"
	echo "5)    To EXIT"
	echo "											   "

	read operation_num

	if [ $operation_num -eq 1 ]
	then
		echo "                                             "
		echo "Enter BookId / Book Name / Author Name"
		echo "                                             "

		read search_query

		echo "                                             "
		echo " *****************  Books *******************"
		grep  $search_query books.txt
		echo "*********************************************"
		echo "                                             "

	elif [ $operation_num -eq 2 ]
	then
		python3 issue_data_base_management.py

	elif [ $operation_num -eq 3 ]
	then
		python3 return_data_base_management.py

	elif [ $operation_num -eq 4 ]
	then
		echo "											   "
		echo "*********************************************"
		cat books.txt
		echo "*********************************************"
		echo "											   "
	elif [ $operation_num -eq 5 ]
	then
		x=2
		echo "											   "
		echo "*********************************************"
		echo "				Exiting ....					"
		echo "*********************************************"
		echo "											   "
	fi
done