BASE_DIR=$(cd -P -- "$(dirname -- "$0")"; pwd -P)
sourceDir=/data/me2me-apps
targetDir=$BASE_DIR/target
appDistDir=$targetDir/app

mkdir -p $targetDir
rm -rf $targetDir/*
mkdir -p $appDistDir

echo '+START-------------------------------------+'
cd $sourceDir
git checkout *
git pull
mvn -Dmaven.skip.test=true clean package -Ptest 

cp -r ./root/target/*.war $targetDir
cp -r ./operation-mgmt/target/*.war $targetDir

cp -r ./activity/target/jsw/app-activity-service $appDistDir
cp -r ./content/target/jsw/app-content-service   $appDistDir
cp -r ./live/target/jsw/app-live-service         $appDistDir
cp -r ./search/target/jsw/app-search-service     $appDistDir
cp -r ./io/target/jsw/app-io-service             $appDistDir
cp -r ./user/target/jsw/app-user-service         $appDistDir
cp -r ./cache/target/jsw/app-cache-service       $appDistDir
cp -r ./sms/target/jsw/app-sms-service           $appDistDir
cp -r ./monitor/target/jsw/app-monitor-service   $appDistDir
cp -r ./sns/target/jsw/app-sns-service           $appDistDir
cp -r ./kafka/target/jsw/app-kafka-service       $appDistDir
cp -r ./pay/target/jsw/app-pay-service           $appDistDir
cd -

#zip app
cd $targetDir
tar -cvf apps-test.tar app/*
cd -
echo '+END---------------------------------------+'

