cd $HOME/Documents
mkdir .portal
cd .portal
touch Daily
touch Weekly
touch Monthly
touch Yearly
touch Today
touch Week
touch Month
touch Year
mkdir .gitfiles
cd .gitfiles
git clone https://github.com/KeenanDown/portal
cd portal
mv bash_profile $HOME
cd $HOME
mv bash_profile .bash_profile
rm bash_profile
say Hello $USER. Welcome to the portal. I run as a command line tool which you can use to help organise your life. Here is a list of instructions.
cd $HOME/Documents/.portal/.gitfiles
open README.txt
say I hope you will find using me useful, $USER, and may I wish you the best of luck in your endeavours.
say See you soon.
exec say Seriously. Read the readme.
