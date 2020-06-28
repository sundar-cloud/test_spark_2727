

echo " script has starte"
source_path=/home/hduser/test/source_dir
log_file=/home/hduser/test/log_file.txt
emp_file=/home/hduser/test/source_dir/employees.txt
targ_path=/home/hduser/test/destination_dir
targ_file=/home/hduser/test/destination_dir/employees.txt
salary_file=/home/hduser/test/salary.txt

if [ -d $source_path ]; then

echo " Soruce_path is exists " > $log_f
    

else
echo " Source_path is not exists so script is terminating" > $log_file
exit 1 
fi


if [ -f $emp_file ]; then

echo " file is exists in the source path" >> $log_file

else

echo " employees file does not exists so script is terminating " >> $log_file

exit

fi 


if [ -d $targ_path ]; then 

echo "Target dir is exists" >> $log_file

else


echo " targer dir does not exists" >> $log_file 
exit

fi


mv $emp_file  $targ_path

status=$?


if [ $status -eq 0 ]; then 

echo " file moved succesfully to the destination dir"
else
echo "  file is not moved properly" >> $log_file
exit 

fi


if [ -s $targ_file ]; then 

echo "file has the record" >> $log_file
 
else
echo " file is empty so the script is terminatings" >> $log_file
exit
fi



cut -d "," -f2 $targ_file > $salary_file

status=$?


if [ $status -eq 0 ]; then
echo " salary file has been created ">> $log_file

else
echo " failure in the cut command" >> $log_file
exit
fi
