#!/usr/bin/python
#coding:utf-8

import smtplib  
import email.MIMEMultipart
import email.MIMEText
import email.MIMEBase
import os.path  
import sys

recipient = "caochanghao@mail.me-to-me.com"
sender = "test@mail.me-to-me.com"
message = email.MIMEMultipart.MIMEMultipart()

subject = "%s" % ("subject")
body = "body"
text = email.MIMEText.MIMEText(body, 'html')
text.set_charset('utf-8')
message.attach(text) 

contentType = 'application/octet-stream'  
mainType,subtype = contentType.split('/', 1)  

message['From'] = sender
message['To'] = recipient
message['Subject'] = subject
message['Date'] = email.Utils.formatdate( )  
fullText = message.as_string( )  
server = smtplib.SMTP_SSL("smtp.exmail.qq.com", 465)
password = "ZAQ!2wsx"
server.login(sender, password)
try:  
    server.sendmail(sender, recipient, fullText)  
finally:  
    server.quit()  
