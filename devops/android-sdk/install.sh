if [ ! -e sdk-tools-linux-3859397.zip ]; then
wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
fi 

rm -rf /usr/misc/android-sdk
mkdir -p /usr/misc/android-sdk/default
unzip -d /usr/misc/android-sdk/default sdk-tools-linux-3859397.zip
\cp -r licenses /usr/misc/android-sdk/default
chmod -R 777 /usr/misc/android-sdk/default

/usr/misc/android-sdk/default/tools/bin/sdkmanager --update
/usr/misc/android-sdk/default/tools/bin/sdkmanager "extras;android;m2repository"
