import React, { Component } from 'react';

class Resultado extends Component {
    state = { }

    render() { 
        const {_id, execution_id, id_test, name_test, type, type_test, state, create_date, path_results, path_vrt} = this.props.info;
        
        return ( 
            <tr>
                <td>{(new Date(create_date)).toLocaleDateString()}</td>
                <td>{name_test}</td>
                <td>{type}</td>
                <td>{type_test}</td>
                <td>{state}</td>
                <td>
                    {path_vrt && path_vrt.length > 0 && 
                        <a href={`${path_vrt}`} target="_blank"  className="btn btn-primary btn-space">VRT</a>
                    }
                    <a href={`${path_results}`} target="_blank"  className="btn btn-success btn-space">Reporte</a>
                </td>
            </tr>
         );
    }
}
 
export default Resultado;