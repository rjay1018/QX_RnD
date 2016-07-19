#!/bin/bash/
############################################################################
##                                                                        ##
##  Title : Rsync Local to Live Directory                                 ##
##  Date  : July 19 2016                                                  ##
##  Author: Renato B. Lopez Jr.                                           ##
##                                                                        ##
############################################################################


source_doc=`/path/to/source/doc`
target_doc=`/path/to/target/doc`

machine_target=`xxx.xxx.xxx.xxx`
port=`xxxx`


rsync -azP -e 'ssh -p $port' --delete $source_doc $dbserver02:$target_doc
