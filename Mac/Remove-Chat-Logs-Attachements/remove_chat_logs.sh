#  This is just a simple shell script to remove
#  any iMessage logs that may be sitting around
#	-Josh Pope
(
  
  found_logs=''
  for file in ~/Library/Messages/* ; do
    if [[ -s "$file" ]] ; then
      found_logs=1
    fi
  done
  if [[ "$found_logs" ]] ; then
    for i in 1 2 3 4 5 6 
	do
   		echo ---
  		sleep .2
	done
  	echo - Found iMessage Logs!
  	for i in 1 2 3
	do
   		echo ---
  		sleep .1
	done
    read -p "--- Are you sure want to delete iMessage logs, and any attachments (y/n)? " RESP
    if [ "$RESP" = "y" ]; then
    for i in 1 2

      do
  	   echo ""
  	done
    echo "- Finding chat logs and deleting them.."
    for file in ~/Library/Messages/chat.* ; do
      if [[ -s "$file" ]] ; then
        rm -r ~/Library/Messages/chat.*
      fi
    done
  	
  	for i in 1 2
      do
       echo ""
    done

    # delete all files *.*
    echo "- Finding any extra log files and deleting them.."

    for file in ~/Library/Messages/* ; do
      if [[ -s "$file" ]] ; then
        rm -r ~/Library/Messages/*
      fi
    done
    for i in 1 2
      do
       echo ""
    done
    for file in ~/Library/Messages/*.* ; do
      if [[ -s "$file" ]] ; then
        rm -r ~/Library/Messages/*.*
      fi
    done
    echo - Searching for any leftover log files that may be present..


    # recurse through attachments, if they exist, and delete them
    for i in 1 2
      do
       echo ""
    done
  	echo "- Looking for attachments "
    for i in 1 2
      do
       echo ""
    done
  	found_attach=''
	  for attach_file in ~/Library/Messages/Attachments/* ; do
	    if [[ -s "$attach_file" ]] ; then
	      found_attach=1
	    fi
	  done
	 if [[ "$found_attach" ]] ; then
		    echo "--- Found attachments, deleting them "
		    echo "     "; rm -r ~/Library/Messages/Attachments/*
	 fi
	echo ""
  
  	else
      echo "You chose not to continue.. Ok, dude."
    fi
  else
  	echo ""
	echo ""
    echo --- No iMessage logs exist on this computer!
    echo ""
	echo ""
  fi
)
