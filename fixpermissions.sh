#! /bin/bash
THIS_USER=$USER
sudo chown -R $THIS_USER:$THIS_USER ./* &&
echo "File permissions have been fixed" ||
echo "An error has occured"