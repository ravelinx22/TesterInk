import React, { Component } from 'react';
import SetPrueba from './SetPrueba';
import axios from 'axios';
import swal from 'sweetalert2';

class Ejecuciones extends Component {

    state = { 
        aplicaciones: [],
        setPruebas : []
     }

    componentDidMount(){
        this.obtenerAplicaciones();
        this.obtenerSetPruebas();
    }


    obtenerAplicaciones = () => {
        axios.get(`https://testerink-api.herokuapp.com/api/apps`).then(res => {
            this.setState({
                aplicaciones: res.data.data
            })
        })
    }


    obtenerSetPruebas = () => {
        axios.get(`https://testerink-api.herokuapp.com/api/test`).then(res => {
            this.setState({
                setPruebas: res.data.data
            })
        })
    }


    eliminarSetPrueba = (id) => {
        axios.delete(`https://testerink-api.herokuapp.com/api/test/${id}`).then(res => {
            if(res.status === 200){
                this.obtenerSetPruebas();
            }
        })
    }

    mostrarSetPruebas = () => {
        
        if(this.state.setPruebas.length === 0) return null;
        return(
            <React.Fragment>
                {Object.keys(this.state.setPruebas).map(set=>(
                    
                    <SetPrueba 
                        key={set}
                        info={this.state.setPruebas[set]}
                        apps={this.state.aplicaciones}
                        eliminarSetPrueba={this.eliminarSetPrueba}
                        ejecutarSetPrueba={this.ejecutarSetPrueba}
                        programarSetPrueba={this.programarSetPrueba} />
                ))}
            </React.Fragment>
        );
    }

    ejecutarSetPrueba = (setPruebas) => {
        const {_id, aplication_id, tests} = setPruebas;
        let errors = [];
        let tipoPrueba = null;
        
        const ejecucion = {
            test_id: _id,
            aplication_id: aplication_id,
            type: 'Normal'
        }    
        console.log(ejecucion);
        axios.post(`https://testerink-api.herokuapp.com/api/execution/`, ejecucion).then(res => {
            if(res.status === 200 && res.data.status=== 'success'){
                console.log(res.data.message);
            }else{
                errors.push("Error registrando la prueba "+ _id);
            }
        }) 
        

        if(errors.length==0){
            swal(
                "Ejecución Registrada!",
                "La ejecución del set de pruebas fue registrada con exito, en unos minutos se iniciará",
                "success"
            )
        }else{
            swal({
                    type: 'error',
                    title: 'Ejecucion Fallida!',
                    text: 'La ejecución del set de pruebas NO fue registrada, intentelo nuevamente',
            })
        }
    }

    programarSetPrueba = () => {
        swal({
            type: 'error',
            title: 'Ooops!',
            text: 'La funcionalidad aún no esta implementada!',
        })
    }
    
    render() {
        return (
            <div className="row">
                <div className="col-lg-12">
                    <h2 className="page-header">Ejecuciones</h2>
                </div>
                <div className="row">
                    <div className="col-lg-12">
                        <div className="panel panel-default">
                            <div className="panel-heading clearfix">
                                <h3 className="panel-title pull-left">Listado</h3>
                            </div>
                            <div className="panel-body scroll">
                                <table className="table table-striped table-bordered table-hover" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>Set de Pruebas</th>
                                            <th>Titulo Prueba</th>
                                            <th>Aplicación</th>
                                            <th>Tipo Pruebas</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {this.mostrarSetPruebas()}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default Ejecuciones;