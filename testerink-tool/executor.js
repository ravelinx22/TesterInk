const mongoose = require('mongoose'); // An Object-Document Mapper for Node.js
const assert = require('assert'); // N.B: Assert module comes bundled with NodeJS.
const exec = require('child_process').exec;
mongoose.Promise = global.Promise; // Allows us to use Native promises without throwing error.

// Connect to a single MongoDB instance. The connection string could be that of remote server
// We assign the connection instance to a constant to be used later in closing the connection
const db = mongoose.connect('mongodb://localhost:27017/contact-manager');

// Convert value to to lowercase
function toLower(v) {
  return v.toLowerCase();
}

// Define a test Schema
const testSchema = mongoose.Schema({
  name: { type: String, set: toLower },
  typeTest: { type: String, set: toLower },
  tool: { type: String, set: toLower },
  result: { type: String, set: toLower }
});

// Define model as an interface with the database
const Test = mongoose.model('Test', testSchema);

/**
 * @function  [addTest]
 * @returns {String} Status
 */
const addTest = (test) => {
  Test.create(test, (err) => {
    assert.equal(null, err);
    console.info('New contact added');
    db.disconnect();
  });
};

/**
 * @function  [getTest]
 * @returns {Json} tests
 */
const getTest = (name) => {
  // Define search criteria
  const search = new RegExp(name, 'i');

  Test.find({$or: [{name: search }, {typeTest: search }]})
  .exec((err, test) => {
    assert.equal(null, err);
    console.info(test);
    console.info(`${test.length} matches`);
    db.disconnect();
  });
};

/**
 * @function  [getTestList]
 * @returns {Sting} status
 */
const updateTest= (_id, test) => {
  Test.update({ _id }, test)
  .exec((err, status) => {
    assert.equal(null, err);
    console.info('Updated successfully');
    db.disconnect();
  });
};

/**
 * @function  [deleteTest]
 * @returns {String} status
 */
const deleteTest = (_id) => {
  Test.remove({ _id })
  .exec((err, status) => {
    assert.equal(null, err);
    console.info('Deleted successfully');
    db.disconnect();
  })
}


/**
 * @function  [executeDocker]
 * 
 */
const executeDocker = (_command) => {
    let execCallback = (error, stdout, stderr) => {
        if (error) console.log("exec error: " + error);
        if (stdout) console.log("Result: " + stdout);
        if (stderr) console.log("shell error: " + stderr);
        exec("sudo docker stop $(sudo docker ps -a -q) && sudo docker rm $(sudo docker ps -a -q)", (error, stdout, stderr) => {
          if (error) console.log("exec error: " + error);
          if (stdout) console.log("Result: " + stdout);
          if (stderr) console.log("shell error: " + stderr);
        });
      };

    exec( _command, execCallback);
    
    db.disconnect();
}

/**
 * @function  [getTestList]
 * @returns [testlist] tests
 */
const getTestList = () => {
  Test.find()
  .exec((err, tests) => {
    assert.equal(null, err);
    console.info(tests);
    console.info(`${tests.length} matches`);
    db.disconnect();
  })
}

// Export all methods
module.exports = {   
  addTest, 
  getTest, 
  getTestList,
  updateTest,
  deleteTest,
  executeDocker 
};
