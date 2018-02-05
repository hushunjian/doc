#!/usr/bin/env node
var path = require('path');
var newman = require('/usr/local/node_modules/newman');
var fs = require('fs');

folder='examples'
fs.readdir('./' + folder, function (err, files) {
    if (err) { throw err; }

    // we filter all files with JSON file extension
    files = files.filter(function (file) {
        return (/.*\.json/.test(file));
    });

    // now wer iterate on each file name and call newman.run using each file name
    files.forEach(function (file) {
        newman.run({
            environment: require('./environment_test.json'),
            collection: require(path.join(__dirname, folder, file)),
            reporters: null
        }, function(err, summary){
            var message = file + ":" + summary.run.timings.responseAverage;
            console.log(message);
        });
    });
});
