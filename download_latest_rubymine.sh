#!/bin/bash
download_location="/opt/jetbrains/"
cd download_location
version=`curl https://confluence.jetbrains.com/display/RUBYDEV/Previous+RubyMine+Releases | grep latest\ RubyMine | sed "s/.*RubyMine \(.*\) release.*/\1/g"`
echo $version
filename="RubyMine-$version.tar.gz"
file_link="https://download.jetbrains.com/ruby/$filename"
echo $file_link
wget $file_link
chown sp0gg:sp0gg $filename
tar -zxvf $filename
chown -R sp0gg:sp0gg RubyMine-$version/
cd -
