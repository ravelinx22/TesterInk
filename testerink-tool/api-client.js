// Imports
var axios = require('axios');

const instance = axios.create({
    baseURL: 'https://testerink-api.herokuapp.com/api/',
    timeout: 1000
});

const getExecutions= async () => {
    try{
        return await instance.get('ejecucion/?estado=Registrada');
    }catch(error) {
        console.error(error)
    }
}


const getSetTest= async (idSet) => {
    try{
        return await instance.get('setPruebas/' + idSet);
    }catch(error) {
        console.error(error)
    }
}


// Export all methods
module.exports = {
    getExecutions,
    getSetTest
};