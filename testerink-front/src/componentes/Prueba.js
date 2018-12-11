import React, { Component } from 'react';
import { Inicial, WebForm, MovilForm, Confirm } from './Steps.js';
import { states } from './States';
import { StateMachine } from './StateMachine';
import axios from 'axios';
import swal from 'sweetalert2';
import uuid from 'uuid';

class Prueba extends Component {
    constructor(props) {
        super(props);
        this.state = {
            currentState: states.INICIAL,
            aplicaciones: [],
            opcionesApps: [],
            aplicacion: null,
            tipoAplicacion: null,
            title: null,
            vehicleType: null,
            pruebas: [],
            registrado: true
        };
        this._next = this._next.bind(this);
        this._back = this._back.bind(this);
        this.guardarPrueba = this.guardarPrueba.bind(this);
        this.stateMachine = new StateMachine();
    }

    componentDidMount() {
        this.obtenerAplicaciones();
    }

    asignarAplicacion = (app) => {
        this.setState({
            aplicacion: app
        })
    }

    asignarPropiedadesPruebas = (tipoApp, title) => {
        this.setState({
            tipoAplicacion: tipoApp,
            title:title
        })
    }


    obtenerAplicaciones = () => {
        axios.get(`https://testerink-api.herokuapp.com/api/apps`).then(res => {
            if (res.status === 200) {
                let opcionesApps = [];
                if (res.data.data) {
                    res.data.data.map((i) => {
                        return (
                            opcionesApps.push({ 'key': i._id, 'value': i._id, 'text': i.name.concat("@").concat(i.version).concat(" - ").concat(i.type) })
                        )
                    });

                    this.setState({
                        aplicaciones: res.data.data,
                        opcionesApps: opcionesApps
                    })
                }
            }
        });
    }

    registrarSetPrueba = () => {
        let tests = [];
        this.state.pruebas.map((i) => {
            const {description, execution_id, file, generate_data, package_name, run_vrt, screenshots, type, type_test} = i;
            const id_test = uuid();
            
            let filename = null;
            if(file){
                const data = new FormData();
                let filename=id_test+"-"+file.name;    
                data.append('file', file);
                data.append('filename', filename);

                axios.post('https://testerink-api.herokuapp.com/api/upload', data).then(function (response) {
                    this.setState({ imageURL: `https://testerink-api.herokuapp.com/${data.filename}`, uploadStatus: true });
                }).catch(function (error) {
                    console.log(error);
                });

            }
            
            const screenshot_pairs = [];
            for(let i = 1; i<=screenshots;i++){
                screenshot_pairs.push({before:'before'+i+'.png', after:'after'+i+'.png', result:'result'+i+'.png' })
            }

            let vrt_config = null;
            if(execution_id){
                vrt_config= {past_execution_id: execution_id}
            }

            let script = null;

            if(filename){
                script="https://s3-us-west-2.amazonaws.com/testerink-tool-bucket/" + filename
            }

            let test_path = null;
            let stryker_conf_path=null;
            let apk_path = null;
            switch(type) {
                case 'bdt':
                    if(generate_data){
                        test_path = "~/Desktop/testerink-executions/bdt-data";
                    }else if(type_test=='Movil'){
                        test_path = "~/Desktop/testerink-executions/android-bdt";
                    }else{
                        test_path = "~/Desktop/testerink-executions/bdt";
                    }
                    break;
                case 'e2e':
                    test_path = "~/Desktop/testerink-executions/e2e";
                    break;
                case 'random':
                    test_path = "~/Desktop/testerink-executions/random";
                    break;
                case 'headless_small_chrome':
                case 'headless_medium_chrome':
                case 'headless_large_chrome':
                case 'headless_firefox':
                    test_path = "~/Desktop/testerink-executions/headless";
                    break;
                case 'mutation':
                    test_path = "~/Desktop/testerink-executions/webapp";
                    stryker_conf_path="~/Desktop/testerink-executions/stryker.conf.js"
                    break;
                default:
                    
            }

            if(type_test=='Movil'){
                apk_path = "~/Desktop/testerink-executions/Calendula.apk";
            }

            const test = {
                id_test,
                description,
                type,
                screenshot_pairs,
                vrt_config,
                run_vrt,
                package_name,
                apk_path:apk_path,
                generate_data,
                script: script,
                test_path: test_path,
                stryker_conf_path:stryker_conf_path
            }
            tests.push(test);
        });

        const test = {
            aplication_id : this.state.aplicacion,
            type_test: this.state.tipoAplicacion,
            title: this.state.title,
            tests
        }

        
        // registrar el set de pruebas en el api
        axios.post('https://testerink-api.herokuapp.com/api/test', test).then(function (response) {
            if (response.status === 200) {
                swal(
                    "Creación Exitosa!",
                    "El set de prueba fue creado correctamente",
                    "success"
                )
            }else{
                console.log(response);
            }
        }).catch(function (error) {
            console.log(error);
        });

        this.setState({
            registrado: false
        })
    }

    guardarPrueba(prueba) {
        let pruebas = this.state.pruebas.concat();
        pruebas.push(prueba);
        this.setState({
            pruebas: pruebas
        });
    }

    _next(desiredState) {
        let currentState = this.state.currentState;
        let nextState = this.stateMachine.transitionTo(currentState, desiredState);
        this.setState({
            currentState: nextState
        });
    }

    _back(desiredState) {
        let currentState = this.state.currentState;
        this.setState({
            currentState: this.stateMachine.transitionFrom(currentState, desiredState)
        });
    }



    /*
     * Just a note -- you'll see the _next and _back functions
     * get passed around to child components alot. This is not
     * a very good practice, and in the real-world it would be
     * better to use a library like redux to handle application
     * state.
     */
    _currentStep() {
        switch (this.state.currentState) {
            case states.INICIAL:
                return (<Inicial aplicaciones={this.state.aplicaciones} opcionesApps={this.state.opcionesApps} asignarPropiedadesPruebas={this.asignarPropiedadesPruebas} next={this._next} back={this._back} asignarAplicacion={this.asignarAplicacion} />);
            case states.WEB:
                return (<WebForm
                    saveForm={this.guardarPrueba}
                    back={this._back}
                    next={this._next} />);
            case states.MOVIL:
                return (<MovilForm
                    saveForm={this.guardarPrueba}
                    back={this._back}
                    next={this._next} />);
            case states.CONFIRM:
                return (<Confirm tipoAplicacion={this.state.tipoAplicacion} registrarSetPrueba={this.registrarSetPrueba} registrado={this.state.registrado}
                    pruebas={this.state.pruebas}
                    aplicaciones={this.state.aplicaciones}
                    aplicacion={this.state.aplicacion}
                    back={this._back}
                    next={this._next} />);
            default:
                return (<Inicial aplicaciones={this.state.aplicaciones} opcionesApps={this.state.opcionesApps} next={this._next} back={this._back} asignarPropiedadesPruebas={this.asignarPropiedadesPruebas}/>);
        }
    }
    render() {
        return (
            <div className="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Set de Prueba</h2>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        {this._currentStep()}
                    </div>
                </div>
            </div>
        );
    }
}

export default Prueba;