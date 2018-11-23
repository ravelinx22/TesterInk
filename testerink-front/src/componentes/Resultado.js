import React, { Component } from 'react';

class Resultado extends Component {
    state = {  }
    render() { 
        const {_id, execution_id, id_test, name_test, type, type_test, state, create_date, path_results} = this.props.info;
        
       
        return ( 
            <tr>
                <td>{(new Date(create_date)).toLocaleDateString()}</td>
                <td>{name_test}</td>
                <td>{type}</td>
                <td>{type_test}</td>
                <td>{state}</td>
                <td>
                    <button onClick={() => this.props.verEjecucion(execution_id)} type="button" className="btn btn-primary btn-space">Ver Ejecución</button>
                    <a href={`${path_results}`} target="_blank"  className="btn btn-success btn-space">Reporte</a>
                </td>
            </tr>
         );
    }
}
 
export default Resultado;