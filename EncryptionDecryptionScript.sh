#!/bin/bash

echo "Hello user! This script is used for encrypting/decrypting your desired file"
echo "Please select one of the options"

choice="Encrypt Decrypt"
select option in $choice; do
	if [ $REPLY = 1 ];
then
	echo "Let's encrypt the file"
	echo "Please specify the file path"
	read filepath;
	echo "Please enter the file name with its extension"
	read fileen;
	cp $filepath/$fileen .
	gpg -c $fileen
	echo "We are ready!"
	echo "Would you like to encrypt / decrypt more files?"
	choice_exit="No Yes"
	select option in $choice_exit; do
	if [ $REPLY = 1 ];
	then
		echo "Now exitting... Goodbye!!"
		exit 1
	else
		echo "Please select 1 for encrypt and 2 for decrypt"
		break
	fi
	done
else
	echo "Let's decrypt the file"
	echo "Please specify the file path"
	read filepath;
	echo "Please enter the file name with its extension"
	read filede;
	cp $filepath/$filede
	gpg -d $filede
	echo "We are ready!"
	echo "Would you like to encrypt / decrypt more files?"
	choice_exit="No Yes"
	select option in $choice_exit; do
	if [ $REPLY = 1 ];
	then	
		echo "Now exitting... Goodbye!!"
		exit 1
	else
		echo "Please select 1 for encrypt and 2 for decrypt"
		break
	fi
	done
fi
done

