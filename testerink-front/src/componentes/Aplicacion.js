import * as React from 'react';
import {Link} from 'react-router-dom';

class Aplicacion extends React.Component {
    
    render() { 
        const {_id, create_date, name, type, url_test, url_github, url_apk, version} = this.props.info;
       
        return ( 
            <tr>
                <td>{(new Date(create_date)).toLocaleDateString()}</td>
                <td>{type}</td>
                <td>{name}@{version}</td>
                <td>{url_test}</td>
                <td>
                    <Link to={`/conf/editarApp/${_id}`} className="btn btn-primary">Editar</Link>
                    <button onClick={() => this.props.eliminarApp(_id)} type="button" className="btn btn-danger">Eliminar</button>
                </td>
            </tr>
         );
    }
}
 
export default Aplicacion;