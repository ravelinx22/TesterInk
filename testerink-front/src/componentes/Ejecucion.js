import React, { Component } from 'react';
import {Link} from 'react-router-dom';
import { Progress } from 'react-sweet-progress';
import "react-sweet-progress/lib/style.css"
import { create } from 'domain';
import axios from 'axios';

class Ejecucion extends Component {
    state = { resultados : 0 }
    obtenerResultado = (idExecution) => {
        axios.get(`https://testerink-api.herokuapp.com/api/result/?execution_id=${idExecution}`).then(res => {
            if(res.status === 200){
                this.setState({
                    resultados: res.data.data.length
                });
            }
        })
    }

    render() { 
        const {_id,  aplication_id, test_id, state, type, create_date} = this.props.info;
        let nombre=null;
        let prueba = null;
        let numero_pruebas = 0;
        

        this.props.apps.forEach(app => {
            if(app._id===aplication_id){
                nombre = app.name + " - " + app.version;
            }
        });
        

        this.props.setPruebas.forEach(test => {
            if(test._id===test_id){
                prueba = test.title;
                numero_pruebas = test.tests.length;
            }
        });

        this.obtenerResultado(_id);
       
        return ( 
            <tr>
                <td>{(new Date(create_date)).toLocaleDateString()}</td>
                <td>{_id}</td>
                <td>{prueba}</td>
                <td>{nombre}</td>
                <td>
                { state ==='Pending' && 
                    <Progress percent={numero_pruebas===0? 23 : (this.state.resultados*100/numero_pruebas).toFixed()} status={(this.state.resultados*100/numero_pruebas).toFixed()>=100? "error":"active"} />
                }
                {state === 'Executed' && 
                    <Progress percent={100} status="success" />
                }
                {state === 'Register' && 
                    <Progress percent={0} status="active" />                   
                }
                </td>
                
                <td>
                    {state === 'Executed' && 
                        <Link to={`/resultadoPruebas/${_id}`} className="btn btn-success">Resultados</Link>
                    }
                </td>
            </tr>
         );
    }
}
 
export default Ejecucion;