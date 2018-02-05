var newman = require('/usr/local/node_modules/newman');

newman.run({
    environment: require('./environment_test.json'),
    collection: require('./examples/request_01.json'),
    reporters: null
}, function(err, summary){
    console.log(err);
    console.log(summary);
});
