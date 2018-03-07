# marlin-config
Tools for configuring Marlin firmware

# Principle
If you manually change your config file not only you do not clearly trace what changes you made.
But when it comes the time to update Marlin, you spend lots of time finding what changed since your latest Marlin version and porting your config file to it.
Or you redo it from scratch everytime...

What these scripts do is copy a set of example configuration files and apply a sed script to it.
Your original config files are always clean and up-to-date. And your specific configuration is kept in the sed script.

When come the time to update, just check what are the new options and which have been deprecated.
Modify accordingly your sed script. And run the script.

# How to use it
It is a simple script, not very "user friendly" ;).

First, you need the sed program (standard on Linux, less common on Windows). You may also need bash for the main script.
But that main script is so simple that if you don't have bash but only sed you can just do manually what the bash script does.

Second, edit the bash script to at least set the TREE variable to whereever you have the Marlin code-base.
Set also which example config file to use.

Third, choose an available sed script or make a new one. If you don't know the syntax, see below.

At the moment, only one bash script exists for Delta printers. And only one sed script exists for 3KU Delta printer.

Fourth, execute either the bash script:
```
./marlin-config-delta.sh YOUR-SED-BASE-CONFIG-SCRIPT.sed [YOUR-SED-ADV-CONFIG-SCRIPT.sed]
```

Or directly using sed:
```
sed -f YOUR-SED-BASE-CONFIG-SCRIPT.sed -i PATH-TO-MARLIN/Configuration.h
sed -f YOUR-SED-ADV-CONFIG-SCRIPT.sed -i PATH-TO-MARLIN/Configuration_adv.h
```

# Sed syntax
Sed can be vastly complex... But you don't need to know all the possible commands. Here are a few usefull ones.

Replace a full line, with the c command:
```
/Regular expression to match a line/ c What you want there instead
```

Insert lines before a specific one, with the i command:
```
/Regular expression to match a line/ i What you want to insert before
```
Or for multiple lines, use backslash to indicate a new line:
```
/Regular expression to match a line/ i One line ot insert before\
Another one\
And yet another one
```

If you want to append lines after a specific one, it is the same than for insert before, except it's the a command instead of i.

That's it! I didn't need anything else to make my config files ;).

For more info, checkout this (long and complete) tutorial:
http://www.grymoire.com/Unix/Sed.html
