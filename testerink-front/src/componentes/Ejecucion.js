import React, { Component } from 'react';
import {Link} from 'react-router-dom';
import { create } from 'domain';

class Ejecucion extends Component {
    state = {  }
    render() { 
        const {_id,  aplication_id, test_id, state, type, create_date} = this.props.info;
        let nombre=null;

        this.props.apps.forEach(app => {
            if(app._id===aplication_id){
                nombre = app.name + " - " + app.version;
            }
        });
        
       
        return ( 
            <tr>
                <td>{(new Date(create_date)).toLocaleDateString()}</td>
                <td>{_id}</td>
                <td>{nombre}</td>
                <td>{state}</td>
                <td>
                    <Link to={`/resultadoPruebas/${_id}`} className="btn btn-success">Resultados</Link>
                </td>
            </tr>
         );
    }
}
 
export default Ejecucion;