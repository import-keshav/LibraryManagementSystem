echo "                                             "
echo "Press 1 to login as Student"
echo "Press 2 to login as Staff"
echo "                                             "

read student_or_staff

if [ $student_or_staff -eq 1 ]
then
	bash student_home_page.sh
else
	echo "                                             "
	echo "Enter Your Id"
	echo "                                             "

	read staff_id

	if [ $staff_id -le 100 ] && [ $staff_id -ge 0 ]
	then
		bash staff_home_page.sh
	else
			echo "                                             "
			echo "Incorrect Staff ID"
			echo "Please Enter Correct ID"	
			echo "                                             "
	fi
fi