const mongoose = require('mongoose');
mongoose.Promise = global.Promise;

const TestSchema = mongoose.Schema({
  type: Number,
  executed: Boolean,
  tests: {
    e2e: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    bdt: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    random: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    datos: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    headless_small_chrome: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    headless_medium_chrome: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    headless_large_chrome: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    headless_firefox: {
      run_vrt: Boolean,
      screenshot_pairs: [{ before: String, after: String, result: String }],
      test_path: String
    },
    mutation: {
      test_path: String
    }
  }
});
const Test = mongoose.model('Test', TestSchema);

const insertTest = (test, doneInsertingCallback) => {
  const db = mongoose.connect('mongodb://localhost:27017/test-executions', { useMongoClient: true });
  let newTest = new Test();
  newTest.executed = false
  newTest.type = test.type;
  newTest.tests = test.tests;
  newTest.save(function (err, doc) {
    db.close();
    doneInsertingCallback(doc._id, test);
  });
}

const finishTestExecution = (test_id) => {
  const db = mongoose.connect('mongodb://localhost:27017/test-executions', { useMongoClient: true });
  Test.findOneAndUpdate({_id: test_id}, { executed: true }, function(err, doc) {
    console.log("Se termino la ejecución de las pruebas");
    db.close();
  });
}

// Export all methods
module.exports = {
  insertTest,
  finishTestExecution
};
