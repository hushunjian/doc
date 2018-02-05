VERSION=3.0
VERSION=4.4

if [ ! -e gradle-$VERSION-bin.zip ]; then
curl -O https://downloads.gradle.org/distributions/gradle-$VERSION-bin.zip 
fi

if [ ! -e gradle-$VERSION ]; then
unzip gradle-$VERSION-bin.zip
fi

if [ -e gradle-$VERSION ]; then
mkdir -p /usr/misc/gradle
mv gradle-$VERSION /usr/misc/gradle
ln -nsf /usr/misc/gradle/gradle-$VERSION /usr/misc/gradle/default
fi
