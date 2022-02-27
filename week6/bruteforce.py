#!/usr/bin/python3

#bruteforce attack written in python
#based on dictionary attack python code from week6
#Phillip 24/02/2022

import itertools #https://docs.python.org/3/library/itertools.html
import hashlib #https://docs.python.org/3/library/hashlib.html
import string #https://docs.python.org/3/library/string.html

#same as dictionaryAttack.sh declare hash
#hidden password hash
passHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

#use function so we can utilise return to exit the for loops gracefully
def crack_password(hash):

    #create charset, only lowercase for test speed
    chars = string.ascii_lowercase 

    #set password length range 5-8, starts at 5 chars, will end at 8 if no password found
    for length in range(5, 8):

        for password in itertools.product(chars, repeat=length):

            #join array
            word = ''.join(password)

            #hash each word, max length 8
            guessHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

            #output each loop iteration to user
            print(f"Trying password {word}:{guessHash}")

            #if the hash == hash then print
            if(guessHash == passHash): 
            
                #print password found, include found password
                return "Password has been cracked! It was " + word

#print return output
print(crack_password(passHash))