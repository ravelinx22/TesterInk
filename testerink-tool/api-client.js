// Imports
var axios = require('axios');

const instance = axios.create({
    baseURL: 'https://testerink-api.herokuapp.com/api/',
    timeout: 1000
});

const getExecutions= async () => {
    try{
        return await instance.get('execution/');
    }catch(error) {
        console.error(error)
    }
}


const getExecutionsByState= async (state) => {
    try{
        return await instance.get('execution/?state='+state);
    }catch(error) {
        console.error(error)
    }
}


const getSetTest= async (idSet) => {
    try{
        return await instance.get('test/' + idSet);
    }catch(error) {
        console.error(error)
    }
}

const updateExecution= async (execution) => {
    try{
        return await instance.put('execution/'+execution._id, execution);
    }catch(error) {
        console.error(error)
    }
}

const saveResult = async(result) => {
    try{
        return await instance.post('result/', result);
    }catch(error) {
        console.error(error)
    }
}

const uploadFile= async (data) => {
    try{
        return await instance.post('upload/', data);
    }catch(error) {
        console.error(error)
    }
}

// Export all methods
module.exports = {
    getExecutions,
    getSetTest,
    getExecutionsByState,
    updateExecution,
    uploadFile,
    saveResult
};