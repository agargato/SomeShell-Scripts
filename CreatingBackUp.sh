#!/bin/bash
#/etc /var is a example
#mtime specify the time

tar cvf /tmp/backup.tar /etc /var
gzip backup.tar

find backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
  echo Backup was created
  echo
  echo Archiving backup
  scp /tmp/backup.tar.gz user@hostaddress:/path
else
  echo Backup failed
fi
