if [ ! z`whoami` = "zm2m" ]; then echo "you are not m2m."; exit; fi

mvn install:install-file -DgroupId=com.plusnet.search -DartifactId=search-api -Dversion=1.3.5 -Dfile=./lib/search-api-1.3.5.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.plusnet.classify -DartifactId=classify-api -Dversion=1.3.2 -Dfile=./lib/classify-api-1.3.2.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.me2me.core -DartifactId=sms-core-normal -Dversion=1.0 -Dfile=./lib/sms-core-normal-1.0.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.me2me.core -DartifactId=sms-channel-voice -Dversion=1.0 -Dfile=./lib/sms-channel-voice-1.0.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.me2me -DartifactId=jpush-cilent -Dversion=3.2.9 -Dfile=./lib/jpush-cilent-3.2.9.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.me2me.xinge -DartifactId=xinge-api -Dversion=1.1.7 -Dfile=./lib/xinge-api-1.1.7.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.plusnet.sso -DartifactId=sso-api -Dversion=1.0.3 -Dfile=./lib/sso-api-1.0.3.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.plusnet.sso -DartifactId=sso-client -Dversion=1.0.3 -Dfile=./lib/sso-client-1.0.3.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.plusnet.push -DartifactId=json-simple -Dversion=1.1.1 -Dfile=./lib/json-simple-1.1.1.jar -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -DgroupId=com.plusnet.push -DartifactId=MiPush-SDK-Server -Dversion=2.2.18 -Dfile=./lib/MiPush-SDK-Server-2.2.18.jar -Dpackaging=jar -DgeneratePom=true
