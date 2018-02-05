#!/usr/bin/env python
# -*- coding: UTF-8 -*-
from random import Random
from hashlib import md5
import hashlib
import string
import urllib.parse
def create_salt(length=8,chars=string.ascii_letters+string.digits):
	salt=''
	len_chars=len(chars)-1
	random=Random()
	for i in range(length):
		salt +=chars[random.randint(0,len_chars)]
	return salt
def create_md5(salt):  
    md5_obj = md5()  
    md5_obj.update(salt.encode('utf-8'))  
    return md5_obj.hexdigest() 
salt=create_salt()
md5=create_md5(salt)
print(salt)
print(md5)