#!/bin/bash/
############################################################################
##                                                                        ##
##  Title : Rsync Local to Live Directory                                 ##
##  Date  : July 19 2016                                                  ##
##  Author: Renato B. Lopez Jr.                                           ##
##                                                                        ##
############################################################################


source_doc=/path/to/source/doc
target_doc=/path/to/target/doc

echo -n "Please type the Web Link:"
read live_machine

ANSWER='Excute: '
options=("Push" "Pull" "Abort")
select opt in "${options[@]}"
do
  case $opt in
    "Push")
        echo "Uploading Data to $live_machine Server"
        rsync -azP -e 'ssh -p xxxxx' --delete $source_doc $live_machine:$target_doc
        echo "Data Successfully Uploaded"
        ;;
    "Pull")
        echo "Downloading Data from $live_machine Server"
        rsync -azP -e 'ssh -p xxxxx' --delete $live_machine:$target_doc $source_doc
        echo "Data Successfully Downloaded"
        ;;
    "Abort")
        echo "Execution Cancelled"
        break
        ;;
    *)  echo "Please select from the selection above" ;;
  esac
done
