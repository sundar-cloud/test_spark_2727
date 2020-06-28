#!/bin/bash


echo "Script has started"
logger='/home/hduser/sundar/test/test/log'

dir1='/home/hduser/sundar/test/test/dir1'
dir2='/home/hduser/sundar/test/test/dir1/dir2'
dir3='/home/hduser/sundar/test/test/dir1/dir3'
file2='/home/hduser/sundar/test/test/dir1/dir2/file2'
file3='/home/hduser/sundar/test/test/dir1/dir3/file3'

echo "Checking for directory1 is present" >$l
#secindkkk
if [ -d $dir1 ]; then

    echo "directory1 is exists" >>$logger
    
  else



if [ -d $dir2 ]; then

    echo "directory2 is exists" >>$logger
    
	   if [ -f $file2 ]; then 
	      echo " file2 is exists" >> $logger
	       rm $file2
		   test=$?
		     if [ $test -eq 1 ]; then
			  echo "failure in remove the file2" >> $logger
			  exit 1
			  else
			    touch $file2
				fi
		 else
          touch $file2		 
		   fi 
  else
    
    echo "directory2 is not exists" >>$logger
    
    mkdir $dir2
    echo "directory2 created newly" >>$logger
fi



if [ -d $dir3 ]; then

    echo "directory3 is exists" >>$logger
    
	
	if [ -f $file3 ]; then 
	      echo " file3 is exists" >> $logger
	       rm $file3
		   test=$?
		     if [ $test -eq 1 ]; then
			  echo "failure in remove the file2" >> $logger
			  exit 1
			  else
			    touch $file3
				fi
		 else
          touch $file3		 
		   fi 
	
	
	
  else
    
    echo "directory3 is not exists" >>$logger
    
    mkdir $dir3
    echo "directory created newly" >>$logger
fi





