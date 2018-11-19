//var AWS = require('aws-sdk');
var path = require("path");
var fs = require('fs');
const { uploadFile } = require('./api-client.js');
const FormData = require('form-data');
const AWS = require('aws-sdk');
const BUCKET_NAME = process.env.AWS_S3_BUCKET;
const IAM_USER_KEY = process.env.AWS_ACCESS_KEY_ID;
const IAM_USER_SECRET = process.env.AWS_SECRET_ACCESS_KEY;

const uploadDir = function(s3Path, bucketName) {

    let s3 = new AWS.S3({
        accessKeyId: IAM_USER_KEY,
        secretAccessKey: IAM_USER_SECRET,
        Bucket: BUCKET_NAME
});

    function walkSync(currentDirPath, callback) {
        fs.readdir(currentDirPath, function (err, files) {
            if (err) {
                throw new Error(err);
            }
            files.forEach(function (name) {
                var filePath = path.join(currentDirPath, name);
                var stat = fs.statSync(filePath);
                if (stat.isFile()) {
                    callback(filePath, stat);
                } else if (stat.isDirectory()) {
                    walk(filePath, callback);
                }
            });
        });
    }


    walkSync(s3Path, function(filePath, stat) {
        let bucketPath = filePath.substring(s3Path.length-1);
        
        let params = {Bucket: BUCKET_NAME+"/"+bucketName, Key: bucketPath, Body: fs.readFileSync(filePath), ACL: 'public-read' };
        s3.putObject(params, function(err, data) {
            if (err) {
                console.log(err)
            } else {
                console.log('Successfully uploaded '+ bucketPath +' to ' + bucketName);
            }
        });

    });
};

// Export all methods
module.exports = {
    uploadDir
};
